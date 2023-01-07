// import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Screens/svg_strings.dart';
import '../config/Textstyles.dart';
import '../config/color_pallete.dart';
import 'order_cart_bottom_sheet_item.dart';
// import 'package:uff/Constant/Strings.dart';
// import 'package:uff/screens/User%20Screen/Popups/your_order_popup.dart';
// import 'package:uff/screens/User%20Screen/payment_option.dart';
// import 'package:uff/screens/payment_screen.dart';
// import 'package:uff/utils/color_pallete.dart';
// import 'package:uff/utils/svg_strings.dart';
// import 'package:uff/utils/text_styles.dart';
// import 'package:uff/widgets/elevated_button.dart';
// import 'package:uff/widgets/order_cart_bottom_sheet_item.dart';
// import 'package:uff/screens/User%20Screen/Popups/order_placed_popup.dart';

class OrderCartBottomSheet extends StatelessWidget {
  const OrderCartBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.of(context).pop();
      },
      child: GestureDetector(
        onTap: () {}, // Donot edit
        child: DraggableScrollableSheet(
          maxChildSize: 0.9,
          initialChildSize: 0.65,
          builder: (context, controller) {
            return Container(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: ListView(
                controller: controller,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: ColorPallete.blue,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.string(
                              SvgStrings.whiteLocation,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Current Location",
                              style: TextStyles.withColor(
                                TextStyles.mn12,
                                Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "Manu Temple, Old Manali",
                                  style: TextStyles.withColor(
                                    TextStyles.mn12,
                                    Colors.grey,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: ColorPallete.blue,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.string(
                              SvgStrings.whiteClock,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Expected Arrival",
                              style: TextStyles.withColor(
                                TextStyles.mn12,
                                Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "Enter est. time to reach(min)",
                                  style: TextStyles.withColor(
                                    TextStyles.mn12,
                                    Colors.grey,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Share your details for restaurant to start preparing your order and make arrangements for your arrival.",
                    style: TextStyles.withColor(
                      TextStyles.mn12,
                      Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade100,
                    // height: 5,
                    thickness: 3,
                  ),
                  Column(
                    children: const [
                      OrderOnTheCardBottomSheetItem(
                          dishName: "Item 1", price: 35),
                      OrderOnTheCardBottomSheetItem(
                          dishName: "Item 2", price: 45),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 0, right: 0),
                          child: Text(
                            "Billing Summary",
                            style: TextStyles.withletterspacing(
                                TextStyles.mb12, ColorPallete.bluedark, 1.5),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("item total",
                                style: TextStyles.withletterspacing(
                                    TextStyles.mb12,
                                    ColorPallete.animationcolor,
                                    0)),
                            Text("₹ 750",
                                style: TextStyles.withletterspacing(
                                    TextStyles.mb12,
                                    ColorPallete.animationcolor,
                                    0)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Convenience charge",
                                style: TextStyles.withletterspacing(
                                    TextStyles.mb12,
                                    ColorPallete.animationcolor,
                                    0)),
                            Text("₹  0",
                                style: TextStyles.withletterspacing(
                                    TextStyles.mb12,
                                    ColorPallete.animationcolor,
                                    0)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      // Container(
                      //     padding: EdgeInsets.only(left: 0,right: 0),
                      //     child: DottedLine(dashColor: ColorPallete.cursorcolor,)),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("GRAND TOTAL",
                                style: TextStyles.withletterspacing(
                                    TextStyles.mb12, ColorPallete.darlgrey, 0)),
                            Text("₹ 275",
                                style: TextStyles.withletterspacing(
                                    TextStyles.mb12, ColorPallete.darlgrey, 0)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              primary: ColorPallete.bluedark, // background
                              onPrimary: ColorPallete.white, // foreground
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => Payment_option()),
                              // );
                            },
                            child: Text(
                              "PROCEED FOR PAYMENT",
                              style: TextStyles.withletterspacing(
                                  TextStyles.mb12, ColorPallete.white, -0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Divider(
                  //   color: Colors.grey.shade100,
                  //   // height: 5,
                  //   thickness: 3,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     InkWell(
                  //       onTap: () {
                  //         Navigator.of(context).push(
                  //           MaterialPageRoute(
                  //             builder: (context) {
                  //               return const PaymentScreen();
                  //             },
                  //           ),
                  //         );
                  //       },
                  //       child: SizedBox(
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: const [
                  //             Text(
                  //               "Pay Via",
                  //               style: TextStyles.mn14,
                  //             ),
                  //             Text(
                  //               "UPI",
                  //               style: TextStyles.mn14,
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     InkWell(
                  //       onTap: () {
                  //         // Navigator.popUntil(
                  //         //   context,
                  //         //   ModalRoute.withName('homeScreen'),
                  //         // );
                  //         showDialog(
                  //           context: context,
                  //           builder: (context) =>
                  //               const OrderPlacedPopup(itemCount: 3),
                  //         );
                  //       },
                  //       child: Container(
                  //         height: 40,
                  //         width: 220,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(8),
                  //           color: const Color(0xffa8e58d),
                  //         ),
                  //         alignment: Alignment.center,
                  //         child: Row(
                  //           children: [
                  //             const SizedBox(width: 5),
                  //             Column(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: const [
                  //                 Text(
                  //                   "\$120",
                  //                   style: TextStyles.mn12,
                  //                 ),
                  //                 Text(
                  //                   "Total",
                  //                   style: TextStyles.mn12,
                  //                 ),
                  //               ],
                  //             ),
                  //             const Expanded(child: SizedBox()),
                  //             const Text(
                  //               "Order Now",
                  //               style: TextStyles.mb16,
                  //             ),
                  //             const SizedBox(width: 5),
                  //             SvgPicture.string(
                  //               SvgStrings.crockery,
                  //               height: 18,
                  //             ),
                  //             const SizedBox(width: 5),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
