import 'package:flutter/material.dart';
import 'package:flutter_mcq_template/mcq_package.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MCQ Package Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("MCQ Quiz Example")),
        body: MCQQuiz(
          questions: [
            Question(
              text: "What language is used by Flutter?",
              options: ["Dart", "Kotlin", "Swift", "Java"],
              correctIndex: 0,
            ),
            Question(
              text: "Who developed Flutter?",
              options: ["Google", "Apple", "Meta", "Microsoft"],
              correctIndex: 0,
            ),
          ],
          onCompleted: (score) {
            debugPrint("Quiz completed! Score: $score");
          },
        ),
      ),
    );
  }
}
