import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:womania/controllers/questions_ctrl.dart';
import 'package:womania/screens/parts/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionControl _control = Get.put(QuestionControl());
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: _control.nextQuestion,
            child: Text("Skip"),
          )
        ],
      ),
      body: Body(),
    );
  }
}
