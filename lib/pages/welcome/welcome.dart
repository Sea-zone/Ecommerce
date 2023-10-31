import 'package:ecommerce/pages/welcome/widgets.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            // scrollBehavior: AxisDirection.up ,
            scrollDirection: Axis.horizontal,
            children: [
              //firstpage
              appOnboardingPage(
                  imagePath: "assets/images/reading.png",
                  title: "First see Learning",
                  subtitle:
                      "Forget about the paper, now learning all in one place"),
              //secondpage
              appOnboardingPage(
                  imagePath: "assets/images/man.png",
                  title: "Connect with Everone",
                  subtitle:
                      "Always keep in touch with your tutor and friends.Let's get connected"),
              //thirdpage
              appOnboardingPage(
                  imagePath: "assets/images/boy.png",
                  title: "Always Fascinated Learning",
                  subtitle:
                      "Anywhere, anytime. The time is at your discretion. So study wherever you can"),
            ],
          ),
          const Positioned(
            bottom: 100,
            left: 20,
            child: Text("Widget one"),
          ),
        ],
      ),
    );
  }
}
