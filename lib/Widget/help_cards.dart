import 'package:flutter/material.dart';

import '../Screens/svg_strings.dart';
import '../config/color_pallete.dart';
import 'help_card.dart';

// import 'package:uff/utils/text_styles.dart';

class HelpCards extends StatefulWidget {
  @override
  _HelpCardsState createState() => _HelpCardsState();
}

class _HelpCardsState extends State<HelpCards> {
  @override
  Widget build(BuildContext context) {
    // TODO: make 3 helping cards in page view with auto scrolling after 3 sec
    return SizedBox(
      height: 175,
      width: double.infinity,
      // color: Colors.blueAccent,
      child: PageView(
        children: [
          GestureDetector(
            onTap: () {
              print("hii");
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return  CityMenuScreen(
              //         cityName: 'Manali',
              //       );
              //     },
              //   ),
              // );
            },
            child: HelpCard(
              color: ColorPallete.redDull,
              title: "City Menu Card",
              body:
                  "Quit adjusting with limited options nearby and search for the complete set of dishes across the city in a single menu card.",
              svgString: SvgStrings.helpCardbg1,
              currentPage: 0,
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return CityMenuScreen(
                //         cityName: 'Manali',
                //       );
                //     },
                //   ),
                // );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return try_something_new();
              //     },
              //   ),
              // );
            },
            child: HelpCard(
              color: ColorPallete.yellowDull,
              title: "Try Something New",
              body:
                  "Discover places that serve local speciality and traditional dishes, that you haven't explored before.",
              svgString: SvgStrings.helpCardbg2,
              currentPage: 1,
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return try_something_new();
                //     },
                //   ),
                // );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return matched_place_by_taste();
              //     },
              //   ),
              // );
            },
            child: HelpCard(
              color: ColorPallete.greenDull,
              title: "Places Matched To Your Taste",
              body:
                  "Satisfy your tongue by finding restaurants around you who serve according to your taste preferences.",
              svgString: SvgStrings.helpCardbg3,
              currentPage: 2,
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return matched_place_by_taste();
                //     },
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
