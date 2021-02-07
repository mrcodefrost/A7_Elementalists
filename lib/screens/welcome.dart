import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:womania/screens/quiz.dart';

import '../const.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.09, 0.4, 5],
                colors: [
                  Colors.deepPurple.shade100,
                  Colors.white,
                  Colors.white
                ],
              ),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2),
                Center(
                  child: Text(
                    'Womania',
                    style: TextStyle(
                      fontFamily: 'Dancing Script',
                      fontSize: 80.0,
                      color: Colors.teal[800],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.green.shade100,
                  thickness: 1.0,
                  indent: 100.0,
                  endIndent: 100.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     hoverColor: Colors.deepOrange,
                //     filled: true,
                //     fillColor: Colors.greenAccent.shade400, //0xFF1C2341
                //     hintText: 'Full Name',
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.all(Radius.circular(10)),
                //     ),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Handcrafted for a better tomorrow',
                      style: TextStyle(
                        fontFamily: 'Cinzel',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.teal.shade700,
                      ),
                    ),
                    Icon(
                      Icons.pregnant_woman_rounded,
                      color: Colors.pink.shade700,
                      size: 40.0,
                    ),
                  ],
                ),

                Spacer(),
                InkWell(
                  onTap: () => Get.to(QuizScreen()),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      'START QUIZ',
                      style: TextStyle(
                        fontFamily: 'Fredericka the Great',
                        fontSize: 40.0,
                        // fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
