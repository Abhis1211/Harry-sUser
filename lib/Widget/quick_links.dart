import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Screens/svg_strings.dart';
import '../config/Textstyles.dart';
import '../config/color_pallete.dart';

class QuickLinks extends StatelessWidget {
  final List<String> svgs = [
    SvgStrings.tea,
    SvgStrings.streetFood,
    SvgStrings.snacks,
    SvgStrings.pureVeg,
    SvgStrings.bakery,
    SvgStrings.liquor,
    SvgStrings.juice,
  ];
  final List<Color> colors = [
    const Color(0xffE8E8E8),
    const Color(0xffFFE1B4),
    const Color(0xffFFF1BC),
    const Color(0xffCBEFBB),
    const Color(0xffDAC2B5),
    const Color(0xffFEF1E8),
    const Color(0xffFEF1E8),
  ];

  final List<String> titles = [
    "PREMIXED",
    "PASTA",
    "Snacks",
    "VEGETARIAN PIZZA",
    "DESSERT",
    "RED WINE",
    "BEER & CIDER"
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      // color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              "QUICK LINKS",
              style: TextStyles.withletterspacing(
                TextStyles.mb12,
                ColorPallete.darlgrey,
                0.5,
              ),
            ),
          ),
          SizedBox(
            height: 105,
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return QuickLinksScreen(
                    //           quickLinkFilter: titles[index]);
                    //     },
                    //   ),
                    // );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 2,
                        bottom: 5,
                        right: 2,
                      ),
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        color: colors[index],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          SvgPicture.string(
                            svgs[index],
                            height: 60,
                          ),
                          Text(
                            titles[index],
                            overflow: TextOverflow.ellipsis
                            
                            ,
                            style: TextStyles.mb12,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
