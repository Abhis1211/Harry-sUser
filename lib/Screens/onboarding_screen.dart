import 'dart:async';
import 'package:flutter/material.dart';
import 'package:harrys_beach_bistro/Screens/tricolor_divider.dart';
import 'package:harrys_beach_bistro/Widget/Button.dart';
import 'package:harrys_beach_bistro/Widget/OnboardingCardwidget.dart';
import 'package:harrys_beach_bistro/config/Navagate_Next.dart';
import 'package:harrys_beach_bistro/config/color_pallete.dart';
import '../config/Textstyles.dart';
import 'login_screen.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final int _numPages = 5;
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    final List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true, i) : _indicator(false, i));
    }
    return list;
  }

  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage <= 4) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  Widget _indicator(bool isActive, int page) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      margin: const EdgeInsets.symmetric(horizontal: 3),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          color: isActive ? ColorPallete.blue : ColorPallete.grey,
          borderRadius: BorderRadius.circular(5)),
    );
  }

  final List<String> _introTexts = [
    'Find all the places around you, big or small.',
    'Quick search results, matched to your taste preferences.',
    'Text-less smart review system matches you to people similar to your taste preferences only.',
    'Order on the go, as you reach the restaurant & enjoy no waiting time.',
    'Never miss experiencing the local taste of the region you travel, be it food or fruit!'
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: ColorPallete.white,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: <Widget>[
              Container(
                height: 500,
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.black)),
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    OnboardingCardwidget(
                        image: "lib/assets/images/onboarding/onboarding1.png",
                        onboadingtxt: _introTexts[0]),
                    OnboardingCardwidget(
                        image: "lib/assets/images/onboarding/onboarding2.png",
                        onboadingtxt: _introTexts[1]),
                    OnboardingCardwidget(
                        image: "lib/assets/images/onboarding/onboarding3.png",
                        onboadingtxt: _introTexts[2]),
                    OnboardingCardwidget(
                        image: "lib/assets/images/onboarding/onboarding4.png",
                        onboadingtxt: _introTexts[3]),
                    OnboardingCardwidget(
                        image: "lib/assets/images/onboarding/onboarding5.png",
                        onboadingtxt: _introTexts[4]),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TriColorDividor(margin: 1),
              SizedBox(height: 10),
              Text(
                'Searching local food near by?',
                style: TextStyles.withletterspacing(
                  TextStyles.mb20,
                  ColorPallete.onboardingtxt,
                  0.5,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 20),
              ElevatedButtons(
                width: 0.4,
                borderRadius: 10,
                height: 50,
                name: "Sign In",
                onTap: () {
                  nextScreen(context, Login());
                },
              ),
              SizedBox(height: 70)
            ],
          ),
        ),
      ),
    );
  }
}
