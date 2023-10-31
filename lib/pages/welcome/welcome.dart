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
              Image.asset("assets/images/reading.png"),
              Image.asset("assets/images/boy.png"),
              Image.asset("assets/images/reading.png"),
            ],
          ),
          const Positioned(
            bottom: 100,
            left: 20,
            child: Text("Widget one"),
          ),

          //partially positioned widget
          const Positioned(
            left: 200,
            top: 100,
            child: Text(
              "Widget two",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
