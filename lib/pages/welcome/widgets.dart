import 'package:ecommerce/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

Widget appOnboardingPage() {
  return Column(
    children: [
      Image.asset(
        "assets/images/reading.png",
        fit: BoxFit.fitWidth,
      ),
      Container(
          margin: const EdgeInsets.only(top: 15),
          child: text24Normal(text: "First See Learning")),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(
            text: "Forget A bout of Paper all knowledge in one learning"),
      )
    ],
  );
}
