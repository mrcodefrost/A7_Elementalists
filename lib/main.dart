import 'package:flutter/material.dart';
import 'package:womania/screens/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Womania',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: QuizScreen(),
    );
  }
}
