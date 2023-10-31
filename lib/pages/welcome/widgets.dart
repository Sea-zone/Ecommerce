import 'package:ecommerce/common/widgets/app_shadow.dart';
import 'package:ecommerce/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

//optional named parameter
Widget appOnboardingPage(PageController controller,
    {String imagePath = "assets/images/reading.png",
    String title = "",
    String subtitle = "",
    index = 0}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
          margin: const EdgeInsets.only(top: 15),
          child: text24Normal(text: title)),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(text: subtitle),
      ),
      _nextButton(index, controller)
    ],
  );
}

Widget _nextButton(int index, PageController controller) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index,
            duration: const Duration(microseconds: 300),
            curve: Curves.bounceIn);
      }
    },
    child: Container(
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      width: 325,
      height: 50,
      child: Center(child: text16Normal(text: "next", color: Colors.white)),
    ),
  );
}
