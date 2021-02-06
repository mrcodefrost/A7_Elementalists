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
              children: [TimeBar()],
            ),
          ),
        )
      ],
    );
  }
}
