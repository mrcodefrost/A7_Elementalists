import 'package:flutter/material.dart';
import 'package:womania/const.dart';

import 'time_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // WebsafeSvg.asset('assets/2.svg'),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                TimeBar(),
                Text.rich(
                  TextSpan(
                      text: 'Question 1',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: '/10',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: kSecondaryColor),
                        )
                      ]),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
