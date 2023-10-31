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
              appOnboardingPage(),
              //secondpage
              appOnboardingPage(),
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
