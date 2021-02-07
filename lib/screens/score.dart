import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:womania/controllers/questions_ctrl.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionControl _qnControl = Get.put(QuestionControl());
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Congratulations !!",
                style: TextStyle(
                  fontFamily: 'Dancing Script',
                  color: Colors.green,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text("You Scored",
                  style: TextStyle(
                    fontFamily: 'Cinzel',
                    color: Colors.green,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  )),
              Spacer(),
              Text(
                  "${_qnControl.numOfCorrectAns * 10}/${_qnControl.questions.length * 10}",
                  style: TextStyle(
                    fontFamily: 'Fredericka the Great',
                    color: Colors.greenAccent,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  )),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
