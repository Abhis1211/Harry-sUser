import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harrys_beach_bistro/Screens/svg_strings.dart';
import 'package:harrys_beach_bistro/config/Textstyles.dart';

import '../Widget/order_cart_bottom_sheet.dart';
import '../config/color_pallete.dart';

class OrderOntheGoScreen extends StatefulWidget {
  final String name;
  const OrderOntheGoScreen({Key? key, required this.name}) : super(key: key);
  @override
  _OrderOntheGoScreenState createState() => _OrderOntheGoScreenState();
}

class _OrderOntheGoScreenState extends State<OrderOntheGoScreen> {
  int quantity = 1;
  bool buttonchange = false;
  @override
  Widget build(BuildContext context) {
    // int itemCount = 3;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: Stack(
            children: [
              SizedBox.expand(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width / 4.844,
                        color: Colors.yellow,
                        child: SvgPicture.string(
                          SvgStrings.orderOnTheGoGrafity,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ORDER ON THE GO",
                              style: TextStyles.withletterspacing(
                                  TextStyles.mb20, ColorPallete.darlgrey, -0.5),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'to skip waiting time and save your precious travel time without adjusting with food. Place your order now!',
                              style: TextStyles.withletterspacing(
                                  TextStyles.mb14, ColorPallete.darlgrey, -0.5),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10),
                      Divider(thickness: 2),
                      // Container(
                      //   color: const Color(0xffF6F6F6),
                      //   height: 3,
                      //   margin: const EdgeInsets.symmetric(vertical: 10),
                      // ),

                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: TextStyles.withletterspacing(
                                  TextStyles.mb20, ColorPallete.darlgrey, -0.5),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            // const Expanded(child: SizedBox()),
                            Text("VEG only",
                                style: TextStyles.withletterspacing(
                                    TextStyles.mb12,
                                    ColorPallete.darlgrey,
                                    -0.5)),
                            SizedBox(width: 10),
                            Text("Toogle button")
                            // Toogle_Switch_Btn(),
                            // const Expanded(child: SizedBox()),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        width: size.width * 0.95,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  height: size.height * 0.12,
                                  child: Stack(
                                    alignment: Alignment(0.75, 1.5),
                                    children: [
                                      Card(
                                        child: Container(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                          height: size.height *
                                                              0.06,
                                                          width:
                                                              size.width * 0.06,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7,
                                                                  top: 10),
                                                          child: SvgPicture
                                                              .string(SvgStrings
                                                                  .vegMark)),
                                                      Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7,
                                                                  top: 10),
                                                          child: Text(
                                                            "ITEM 1",
                                                            style: TextStyles
                                                                .withletterspacing(
                                                                    TextStyles
                                                                        .mb14,
                                                                    ColorPallete
                                                                        .darlgrey,
                                                                    1),
                                                          )),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Container(
                                                      padding: EdgeInsets.only(
                                                          left: 7),
                                                      child: Text("₹ 250",
                                                          style: TextStyles
                                                              .withletterspacing(
                                                                  TextStyles
                                                                      .mb12,
                                                                  ColorPallete
                                                                      .animationcolor,
                                                                  1))),
                                                ],
                                              ),
                                              Container(
                                                  height: size.height * 0.3,
                                                  width: size.width * 0.4,
                                                  decoration: BoxDecoration(
                                                    color: ColorPallete
                                                        .menucardcolor,
                                                    borderRadius:
                                                        BorderRadius.only(),
                                                  )),
                                            ])),
                                      ),
                                      // plus minus code
                                      // Container(
                                      //   child: Row(
                                      //     children: [
                                      //       GestureDetector(
                                      //         onTap: () {
                                      //           if (quantity > 0) {
                                      //             setState(() {
                                      //               quantity -= 1;
                                      //             });
                                      //
                                      //           }
                                      //         },
                                      //         child: Container(
                                      //           decoration: const BoxDecoration(
                                      //             borderRadius: BorderRadius.only(
                                      //               topLeft: Radius.circular(7),
                                      //               bottomLeft: Radius.circular(7),
                                      //             ),
                                      //             color: Color(0xff7ed957),
                                      //           ),
                                      //           alignment: Alignment.center,
                                      //           height: 28,
                                      //           width: 25,
                                      //           child: const Text(
                                      //             "-",
                                      //             style: TextStyles.mb18,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //       Container(
                                      //         alignment: Alignment.center,
                                      //         height: 28,
                                      //         width: 25,
                                      //         color: const Color(0xff7ed957),
                                      //         child: Text(
                                      //           quantity.toString(),
                                      //           style: TextStyles.mn14,
                                      //         ),
                                      //       ),
                                      //       GestureDetector(
                                      //         onTap: () {
                                      //           setState(() {
                                      //             quantity += 1;
                                      //           });
                                      //
                                      //         },
                                      //         child: Container(
                                      //           decoration: const BoxDecoration(
                                      //             borderRadius: BorderRadius.only(
                                      //               topRight: Radius.circular(7),
                                      //               bottomRight: Radius.circular(7),
                                      //             ),
                                      //             color: Color(0xff7ed957),
                                      //           ),
                                      //           height: 28,
                                      //           width: 25,
                                      //           alignment: Alignment.center,
                                      //           child: const Text("+", style: TextStyles.mb18),
                                      //         ),
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),
                                      quantity >= 1
                                          ? Container(
                                              padding: EdgeInsets.only(
                                                  bottom: 5, right: 30),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      if (quantity > 0) {
                                                        quantity -= 1;
                                                      }
                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  7),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  7),
                                                        ),
                                                        color:
                                                            Color(0xff7ed957),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      height: 28,
                                                      width: 25,
                                                      child: Text(
                                                        "-",
                                                        style: TextStyles
                                                            .withColor(
                                                                TextStyles.mb18,
                                                                ColorPallete
                                                                    .white),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 28,
                                                    width: 25,
                                                    color:
                                                        const Color(0xff7ed957),
                                                    child: Text(
                                                      quantity.toString(),
                                                      style: TextStyles
                                                          .withletterspacing(
                                                              TextStyles.mb12,
                                                              ColorPallete
                                                                  .white,
                                                              -0.5),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      quantity += 1;
                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  7),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  7),
                                                        ),
                                                        color:
                                                            Color(0xff7ed957),
                                                      ),
                                                      height: 28,
                                                      width: 25,
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text("+",
                                                          style: TextStyles
                                                              .withColor(
                                                                  TextStyles
                                                                      .mb18,
                                                                  ColorPallete
                                                                      .white)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          : Container(
                                              margin: EdgeInsets.only(top: 10),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.25,
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    primary: ColorPallete
                                                        .blue, // background
                                                    onPrimary: ColorPallete
                                                        .bgwhite, // foreground
                                                  ),
                                                  onPressed: () async {
                                                    setState(() {
                                                      quantity += 1;
                                                    });
                                                    print("yes true");
                                                  },
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "ADD",
                                                          style:
                                                              TextStyles.mb14,
                                                        ),
                                                        Icon(
                                                          Icons.add_circle,
                                                          size: 15,
                                                        )
                                                      ])),
                                            ),
                                    ],
                                  ));
                            }),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 1),
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height * 0.08,
                  width: size.width * 0.98,
                  color: Color.fromARGB(255, 24, 148, 41),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "1 Item | ₹ 35",
                          style: TextStyles.withletterspacing(
                              TextStyles.mb16, ColorPallete.white, 0),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) => const OrderCartBottomSheet(),
                          );
                        },
                        child: SizedBox(
                          child: Row(
                            children: [
                              Text(
                                "VIEW CART",
                                style: TextStyles.withColor(
                                    TextStyles.withletterspacing(
                                        TextStyles.mb16, ColorPallete.white, 0),
                                    ColorPallete.bgwhite),
                              ),
                              const SizedBox(width: 5),
                              Icon(Icons.room_service_sharp,
                                  color: ColorPallete.white),
                              SizedBox(width: 5),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
