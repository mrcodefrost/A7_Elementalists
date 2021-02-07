import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:womania/controllers/questions_ctrl.dart';
import 'package:womania/screens/parts/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionControl _control = Get.put(QuestionControl());
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: _control.nextQuestion,
            splashColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.transparent)),
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.deepPurple[900],
              ),
            ),
          )
        ],
      ),
      body: Body(),
    );
  }
}
