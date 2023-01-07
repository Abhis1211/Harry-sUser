import 'package:flutter/material.dart';

import '../config/Textstyles.dart';
import '../config/color_pallete.dart';

class OnboardingCardwidget extends StatefulWidget {
  final image;

  final String onboadingtxt;
  OnboardingCardwidget(
      {Key? key, required this.image, required this.onboadingtxt})
      : super(key: key);

  @override
  State<OnboardingCardwidget> createState() => _OnboardingCardwidgetState();
}

class _OnboardingCardwidgetState extends State<OnboardingCardwidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset(
            widget.image,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 15),
        Container(
          // padding: EdgeInsets.only(left: 30, right: 20),
          child: Text(
            widget.onboadingtxt,
            style: TextStyles.withletterspacing(
              TextStyles.mb20,
              ColorPallete.onboardingtxt,
              0.5,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
