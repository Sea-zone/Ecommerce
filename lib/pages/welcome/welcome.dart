import 'package:ecommerce/pages/welcome/widgets.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  Welcome({Key? key}) : super(key: key);

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            // scrollBehavior: AxisDirection.up ,
            scrollDirection: Axis.horizontal,
            children: [
              //firstpage
              appOnboardingPage(_controller,
                  imagePath: "assets/images/reading.png",
                  title: "First see Learning",
                  subtitle:
                      "Forget about the paper, now learning all in one place",
                  index: 1),
              //secondpage
              appOnboardingPage(_controller,
                  imagePath: "assets/images/man.png",
                  title: "Connect with Everone",
                  subtitle:
                      "Always keep in touch with your tutor and friends.Let's get connected",
                  index: 2),
              //thirdpage
              appOnboardingPage(_controller,
                  imagePath: "assets/images/boy.png",
                  title: "Always Fascinated Learning",
                  subtitle:
                      "Anywhere, anytime. The time is at your discretion. So study wherever you can",
                  index: 3),
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
