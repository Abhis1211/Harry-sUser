import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:harrys_beach_bistro/config/Textstyles.dart';

import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: AnimatedSplashScreen(
        splashIconSize: 300,
        backgroundColor: Colors.black,
        splash: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset("lib/assets/images/logo/H2.png",
                  height: 200, width: 200, fit: BoxFit.fill),
            ),
            Container(
              alignment: Alignment.center,
              // padding: EdgeInsets.only(right: 50, left: 50),
              // height: MediaQuery.of(context).size.height * 0.35,
              // width: MediaQuery.of(context).size.height * 0.70,
              child: Text(
                "Harry's Beach Bestro",
                style: TextStyles.withColor(TextStyles.mb16, Colors.white),
              ),
              // child: Image.asset(
              //   "lib/assets/images/vectors/SplashScreen.png",
              // ),
            ),
          ],
        ),
        nextScreen: OnBoard(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    ));
  }
}
