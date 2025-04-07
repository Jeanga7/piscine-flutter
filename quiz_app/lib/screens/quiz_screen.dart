import 'package:flutter/material.dart';
import '../models/category.dart';

class QuizScreen extends StatefulWidget {
  final Category category;

  const QuizScreen({super.key, required this.category});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;

  void answerQuestion(bool userAnswer) {
    final correctAnswer =
        widget.category.questions[currentQuestionIndex].answer;
    final isCorrect = userAnswer == correctAnswer;

    if (isCorrect) score++;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(isCorrect ? "Correct!" : "Incorrect!"),
        backgroundColor: isCorrect ? Colors.green : Colors.red,
        duration: Duration(microseconds: 500),
      ),
    );

    Future.delayed(Duration(milliseconds: 600), () {
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
      appBar: AppBar(title: Text(widget.category.name)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.category.imageUrl, height: 150),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              question.question,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => answerQuestion(true),
                child: Text("Vrai"),
              ),
              ElevatedButton(
                onPressed: () => answerQuestion(false),
                child: Text("Faux"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
