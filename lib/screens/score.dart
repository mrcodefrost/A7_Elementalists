import 'package:flutter/cupertino.dart';
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
                  color: Colors.deepPurple,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text("You Scored",
                  style: TextStyle(
                    fontFamily: 'Cinzel',
                    color: Colors.deepPurple,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  )),
              Spacer(),
              Divider(
                color: Colors.deepPurpleAccent.shade200,
              ),
              Text(
                "${_qnControl.numOfCorrectAns * 10}/${_qnControl.questions.length * 10}",
                style: TextStyle(
                  fontFamily: 'Fredericka the Great',
                  color: Colors.deepPurpleAccent.shade200,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: Colors.deepPurpleAccent.shade200,
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
