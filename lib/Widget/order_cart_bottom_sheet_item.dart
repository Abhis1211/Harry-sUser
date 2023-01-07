import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

import '../Screens/svg_strings.dart';
import '../config/Textstyles.dart';
import '../config/color_pallete.dart';

class OrderOnTheCardBottomSheetItem extends StatefulWidget {
  final String dishName;
  final double price;
  const OrderOnTheCardBottomSheetItem(
      {Key? key, required this.dishName, required this.price})
      : super(key: key);

  @override
  State<OrderOnTheCardBottomSheetItem> createState() =>
      _OrderOnTheCardBottomSheetItemState();
}

class _OrderOnTheCardBottomSheetItemState
    extends State<OrderOnTheCardBottomSheetItem> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  SvgPicture.string(
                    SvgStrings.vegMark,
                    height: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.dishName.toUpperCase(),
                    style: TextStyles.withletterspacing(
                        TextStyles.mb12, ColorPallete.darlgrey, 1),
                  ),
                ],
              ),
              Text(
                "₹ ${widget.price}",
                style: TextStyles.withletterspacing(
                    TextStyles.mb10, ColorPallete.animationcolor, 1),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 1),
              SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (quantity > 0) {
                          quantity -= 1;
                        }
                        setState(() {});
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            bottomLeft: Radius.circular(7),
                          ),
                          color: Color(0xff7ed957),
                        ),
                        alignment: Alignment.center,
                        height: 28,
                        width: 25,
                        child: Text(
                          "-",
                          style: TextStyles.withColor(
                              TextStyles.mb18, ColorPallete.white),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 28,
                      width: 25,
                      color: const Color(0xff7ed957),
                      child: Text(
                        quantity.toString(),
                        style: TextStyles.withletterspacing(
                            TextStyles.mb10, ColorPallete.white, -0.5),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        quantity += 1;
                        setState(() {});
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(7),
                            bottomRight: Radius.circular(7),
                          ),
                          color: Color(0xff7ed957),
                        ),
                        height: 28,
                        width: 25,
                        alignment: Alignment.center,
                        child: Text("+",
                            style: TextStyles.withColor(
                                TextStyles.mb18, ColorPallete.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
