import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/Textstyles.dart';
import '../config/color_pallete.dart';
// import 'package:uff/utils/color_pallete.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:uff/utils/text_styles.dart';

class HelpCard extends StatelessWidget {
  final Color color;
  final String title;
  final String body;
  final String svgString;
  final int currentPage;
  final VoidCallback? onTap;

  const HelpCard({
    Key? key,
    required this.color,
    required this.title,
    required this.body,
    required this.svgString,
    required this.currentPage,
    this.onTap,
  }) : super(key: key);

  List<Widget> _buildPageIndicator() {
    final List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(i == currentPage ? _indicator(true, i) : _indicator(false, i));
    }
    return list;
  }

  Widget _indicator(bool isActive, int page) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white24,
          borderRadius: BorderRadius.circular(5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7, right: 7),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyles.withletterspacing(
                        TextStyles.mb16,
                        ColorPallete.white,
                        0.5,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      body,
                      style: TextStyles.mn12.copyWith(
                        color: Colors.white,
                        wordSpacing: 2.5,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.chevron_right,
                        color: color,
                      ),
                      onPressed: onTap,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
            ),
            // Align(
            //   alignment: currentPage == 1
            //       ? Alignment.centerRight
            //       : Alignment.bottomRight,
            //   child: Padding(
            //     padding: EdgeInsets.all(currentPage == 2 ? 10.0 : 0),
            //     child: SvgPicture.string(
            //       svgString,
            //       height: currentPage == 1 ? 120 : 70,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
