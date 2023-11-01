import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/pages/welcome/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController _controller = PageController();

  int dotsIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        dotsIndex = _controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              margin: EdgeInsets.only(top: 30.h),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  //showing our three welcome pages
                  PageView(
                    onPageChanged: (value) {
                      print('----my index value is $value');
                      setState(() {
                        dotsIndex = value;
                      });
                    },
                    controller: _controller,
                    // scrol lBehavior: AxisDirection.up ,
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
                  //for showing dots indicator
                  Positioned(
                    // left: 20,
                    bottom: 50,
                    child: DotsIndicator(
                      dotsCount: 3,
                      position: dotsIndex,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                        activeColor: Colors.blue,
                        size: const Size.square(9.0),
                        activeSize: const Size(36.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.w),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
