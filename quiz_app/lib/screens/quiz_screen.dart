import 'package:flutter/material.dart';
import '../models/category.dart';

class DetailedView extends StatefulWidget {
  final Category category;

  const DetailedView({super.key, required this.category});

  @override
  State<DetailedView> createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView> {
  int currentQuestionIndex = 0;
  int score = 0;

  void answerQuestion(bool userAnswer) {
    final correctAnswer =
        widget.category.questions[currentQuestionIndex].answer;
    final isCorrect = userAnswer == correctAnswer;

    if (isCorrect) score++;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isCorrect ? "Correct!" : "Incorrect!",
          style: const TextStyle(fontSize: 16),
        ),
        backgroundColor: isCorrect ? Colors.green : Colors.red,
        duration: const Duration(milliseconds: 500),
      ),
    );

    Future.delayed(const Duration(milliseconds: 600), () {
      if (currentQuestionIndex < widget.category.questions.length - 1) {
        setState(() {
          currentQuestionIndex++;
        });
      } else {
        Navigator.pushReplacementNamed(
          context,
          '/score',
          arguments: {
            'score': score,
            'total': widget.category.questions.length,
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.category.questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Question ${currentQuestionIndex + 1}/${widget.category.questions.length}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.category.imageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: .1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                question.question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () => answerQuestion(true),
                  child: const Text("Vrai", style: TextStyle(fontSize: 16)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () => answerQuestion(false),
                  child: const Text("Faux", style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
