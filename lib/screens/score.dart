import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:womania/const.dart';
import 'package:womania/controllers/questions_ctrl.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionControl _qnControl = Get.put(QuestionControl());
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnControl.numOfCorrectAns * 10}/${_qnControl.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
