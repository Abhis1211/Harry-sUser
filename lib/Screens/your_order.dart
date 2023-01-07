import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:uff/Api/api.dart';

import '../config/Textstyles.dart';
import '../config/color_pallete.dart';

class Your_order extends StatefulWidget {
  const Your_order({Key? key}) : super(key: key);

  @override
  _Your_orderState createState() => _Your_orderState();
}

class _Your_orderState extends State<Your_order> {
  void initState() {
    // apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorPallete.white,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Your order".toUpperCase(),
                    style: TextStyles.withletterspacing(
                        TextStyles.mb20, ColorPallete.darlgrey, 0),
                  )),
              SizedBox(height: 10),
              Divider(thickness: 1),
              Container(
                height: size.height * 0.8,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          // apicall();
                        });
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => Order_Summary()),
                        // );
                      },
                      child: Card(
                          child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 10, top: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: size.height * 0.025,
                                            width: size.width * 0.2,
                                            child: Center(
                                                child: Text(
                                                    "Preparing".toUpperCase(),
                                                    style: TextStyles
                                                        .withletterspacing(
                                                            TextStyles.mb10,
                                                            ColorPallete
                                                                .bgwhite,
                                                            0))),
                                            decoration: BoxDecoration(
                                              color: ColorPallete.bluedark,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(7),
                                                  topRight: Radius.circular(7),
                                                  bottomLeft:
                                                      Radius.circular(7),
                                                  bottomRight:
                                                      Radius.circular(7)),
                                            )),
                                        SizedBox(height: 5),
                                        Container(
                                          width: size.width * 0.85,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                          child: Text(
                                                        "ITEM Name",
                                                        style: TextStyles
                                                            .withletterspacing(
                                                                TextStyles.mb20,
                                                                ColorPallete
                                                                    .darlgrey,
                                                                0),
                                                      )),
                                                      SizedBox(width: 10),
                                                      // Padding(
                                                      //   padding: EdgeInsets.only(
                                                      //       left: 0, right: 5),
                                                      //   child: Container(
                                                      //     padding:
                                                      //         EdgeInsets.only(
                                                      //             left: 2),
                                                      //     width: 20,
                                                      //     height: 20,
                                                      //     decoration: BoxDecoration(
                                                      //         color: ColorPallete
                                                      //             .green,
                                                      //         borderRadius:
                                                      //             BorderRadius
                                                      //                 .all(Radius
                                                      //                     .circular(
                                                      //                         3))),
                                                      //     child: Row(
                                                      //       children: [
                                                      //         Text(
                                                      //             "4.5"
                                                      //                 .toUpperCase(),
                                                      //             style: TextStyles.withletterspacing(
                                                      //                 TextStyles
                                                      //                     .mb18,
                                                      //                 ColorPallete
                                                      //                     .bgwhite,
                                                      //                 0)),
                                                      //         Icon(
                                                      //           Icons.star,
                                                      //           size: 12,
                                                      //           color:
                                                      //               ColorPallete
                                                      //                   .white,
                                                      //         )
                                                      //       ],
                                                      //     ),
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3),
                                                  Container(
                                                      child: Text(
                                                          "2/A, Kalakunj, Mall Road,",
                                                          style: TextStyles
                                                              .withletterspacing(
                                                                  TextStyles
                                                                      .mb12,
                                                                  ColorPallete
                                                                      .animationcolor,
                                                                  0))),
                                                  SizedBox(height: 8),
                                                  Container(
                                                      child: Text("Order on",
                                                          style: TextStyles
                                                              .withletterspacing(
                                                                  TextStyles
                                                                      .mb12,
                                                                  ColorPallete
                                                                      .darlgrey,
                                                                  0))),
                                                  Container(
                                                      child: Text(
                                                          "12 sep 2021 at 9.00 Pm",
                                                          style: TextStyles
                                                              .withletterspacing(
                                                                  TextStyles
                                                                      .mb12,
                                                                  ColorPallete
                                                                      .darlgrey,
                                                                  0))),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                  height: size.height * 0.12,
                                                  width: size.width * 0.3,
                                                  decoration: BoxDecoration(
                                                    color: ColorPallete
                                                        .menucardcolor,
                                                    borderRadius:
                                                        BorderRadius.only(),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ])),
                          SizedBox(height: 10),
                          ExpansionTile(
                            title: Container(
                              padding: EdgeInsets.only(left: 20, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'view more'.toUpperCase(),
                                    style: TextStyles.withletterspacing(
                                        TextStyles.mb12,
                                        ColorPallete.bluedark,
                                        1.5),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // showDialog(
                                      //   context: context,
                                      //   builder: (context) {
                                      //     return ReviewPopUp(
                                      //       itemCount: 2,
                                      //     );
                                      //   },
                                      // );
                                    },
                                    child: Container(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.add_box_outlined,
                                              size: 20,
                                              color: ColorPallete.blue,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "ADD Review".toUpperCase(),
                                              style:
                                                  TextStyles.withletterspacing(
                                                      TextStyles.mb12,
                                                      ColorPallete.blue,
                                                      1),
                                            ),
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            children: <Widget>[
                              SizedBox(height: 15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Text(
                                        "Billing summary",
                                        style: TextStyles.withletterspacing(
                                            TextStyles.mb12,
                                            ColorPallete.bluedark,
                                            1.5),
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("item total",
                                            style: TextStyles.withletterspacing(
                                                TextStyles.mb12,
                                                ColorPallete.animationcolor,
                                                0)),
                                        Text("250",
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
                                    padding:
                                        EdgeInsets.only(left: 10, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Convenience charge",
                                            style: TextStyles.withletterspacing(
                                                TextStyles.mb12,
                                                ColorPallete.animationcolor,
                                                0)),
                                        Text("0",
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
                                  //     padding:
                                  //         EdgeInsets.only(left: 10, right: 20),
                                  //     child: DottedLine(
                                  //       dashColor: ColorPallete.cursorcolor,
                                  //     )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("GRAND TOTAL",
                                            style: TextStyles.withletterspacing(
                                                TextStyles.mb14,
                                                ColorPallete.darlgrey,
                                                0)),
                                        Text("275",
                                            style: TextStyles.withletterspacing(
                                                TextStyles.mb14,
                                                ColorPallete.darlgrey,
                                                0)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 20),
                                      child: Divider()),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("PAYMENT METHOD",
                                            style: TextStyles.withletterspacing(
                                                TextStyles.mb12,
                                                ColorPallete.darlgrey,
                                                0)),
                                        Row(children: [
                                          Container(
                                            height: 20,
                                            width: 20,
                                            padding: EdgeInsets.only(left: 5),
                                            color: ColorPallete.menucardcolor,
                                          ),
                                          Container(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Text(
                                                  "Google pay".toUpperCase(),
                                                  style: TextStyles
                                                      .withletterspacing(
                                                          TextStyles.mb12,
                                                          ColorPallete.black,
                                                          0))),
                                        ]),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            primary: ColorPallete
                                                .bluedark, // background
                                            onPrimary: ColorPallete
                                                .bgwhite, // foreground
                                          ),
                                          onPressed: () async {
                                            // showDialog(
                                            //   context: context,
                                            //   builder: (context) {
                                            //     return Your_Order_Popup(
                                            //         itemCount: 5);
                                            //   },
                                            // );
                                          },
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Icon(
                                                  Icons.add_box_outlined,
                                                  size: 20,
                                                ),
                                                Text(
                                                  "ADD ITEMS",
                                                  style: TextStyles
                                                      .withletterspacing(
                                                          TextStyles.mb12,
                                                          ColorPallete.white,
                                                          1),
                                                ),
                                              ])),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      )),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: User_bottombar(index: 3),
      ),
    );
  }

  // apicall() {
  //   var response = Api().apicall_get("restaurant/all-orders", context);
  // }
}
