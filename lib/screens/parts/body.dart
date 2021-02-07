import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:womania/const.dart';
import 'package:womania/controllers/questions_ctrl.dart';
import 'package:womania/screens/parts/question_card.dart';

import 'time_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControl _questioncontrol = Get.put(QuestionControl());
    return Stack(
      children: [
        // WebsafeSvg.asset('assets/2.svg'),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: TimeBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Obx(
                () => Text.rich(
                  TextSpan(
                      text: 'Question ${_questioncontrol.questionNumber.value}',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: '/${_questioncontrol.questions.length}',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: kSecondaryColor),
                        )
                      ]),
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Expanded(
                child: PageView.builder(
                  //swipe blocked to next question
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questioncontrol.pageController,
                  onPageChanged: _questioncontrol.updateTheQnNum,
                  itemCount: _questioncontrol.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questioncontrol.questions[index],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
