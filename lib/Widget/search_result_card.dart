import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/Textstyles.dart';
import '../config/color_pallete.dart';

class Search_Result_Card extends StatefulWidget {
  final String name;

  final itemname;

  final price;

  const Search_Result_Card(
      {Key? key, required this.name, this.itemname, this.price})
      : super(key: key);
  @override
  _Search_Result_CardState createState() => _Search_Result_CardState();
}

class _Search_Result_CardState extends State<Search_Result_Card> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        height: 110,
        width: size.width * 0.95,
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Restaurant_Screen()),
              // );
            },
            child: Container(
                child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              widget.name,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: ColorPallete.green,
                                  ),
                                  Container(
                                      width: size.width * 0.35,
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        widget.itemname,
                                        style: TextStyles.withletterspacing(
                                          TextStyles.mb16,
                                          ColorPallete.black,
                                          0.5,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                  SizedBox(width: 3),
                                  Image.asset(
                                    "lib/assets/images/veg_non_veg/veg.png",
                                    height: 15,
                                    width: 10,
                                  ),
                                  SizedBox(width: 3),
                                  Image.asset(
                                    "lib/assets/images/veg_non_veg/nonveg.png",
                                    height: 15,
                                    width: 10,
                                  ),
                                  SizedBox(width: 10),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0, right: 5),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 3),
                                      height: size.height * 0.025,
                                      width: size.width * 0.1,
                                      decoration: BoxDecoration(
                                          color: ColorPallete.green,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "4.1".toUpperCase(),
                                            style: TextStyles.withletterspacing(
                                              TextStyles.mb12,
                                              ColorPallete.bgwhite,
                                              0.5,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 13,
                                            color: ColorPallete.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  child: Text(
                                "Item ingrdiants",
                                style: TextStyles.withletterspacing(
                                  TextStyles.mn14,
                                  ColorPallete.gray6,
                                  0.5,
                                ),
                              )),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                      child: Text(
                                    "\$",
                                    style: TextStyles.withletterspacing(
                                      TextStyles.mb12,
                                      ColorPallete.gray6,
                                      0.5,
                                    ),
                                  )),
                                  Container(
                                      child: Text(
                                    widget.price.toString(),
                                    style: TextStyles.withletterspacing(
                                      TextStyles.mb16,
                                      ColorPallete.gray6,
                                      0.5,
                                    ),
                                  )),
                                  // Container(
                                  //     child: Text(
                                  //   "South Indian",
                                  //   style: TextStyles.withletterspacing(
                                  //     TextStyles.mb12,
                                  //     ColorPallete.grey6,
                                  //     0.5,
                                  //   ),
                                  // )),
                                ],
                              ),

                              SizedBox(height: 5),
                              // Padding(
                              //   padding: const EdgeInsets.only(left: 3),
                              //   child: Container(
                              //       height: size.height * 0.03,
                              //       decoration: BoxDecoration(
                              //           color: ColorPallete.lightgrey,
                              //           borderRadius: BorderRadius.circular(
                              //               20) // use instead of BorderRadius.all(Radius.circular(20))
                              //           ),
                              //       child: Row(
                              //         children: [
                              //           Container(
                              //               padding: EdgeInsets.only(
                              //                   left: 10, right: 10),
                              //               child: Text(
                              //                 "Since 2005 . Self Service",
                              //                 style:
                              //                     TextStyles.withletterspacing(
                              //                   TextStyles.mb12,
                              //                   ColorPallete.darlgrey,
                              //                   0.5,
                              //                 ),
                              //               )),
                              //         ],
                              //       )),
                              // ),
                              // SizedBox(height: 7),
                              // Row(
                              //   children: [
                              //     Container(
                              //         padding: EdgeInsets.only(left: 5),
                              //         child: Row(
                              //           children: [
                              //             Icon(
                              //               Icons.location_pin,
                              //               size: 15,
                              //               color: ColorPallete.red,
                              //             ),
                              //             SizedBox(
                              //               width: 2,
                              //             ),
                              //             Text(
                              //               "1 KM away",
                              //               style: TextStyles.withletterspacing(
                              //                 TextStyles.mb12,
                              //                 ColorPallete.darlgrey,
                              //                 0.5,
                              //               ),
                              //             )
                              //           ],
                              //         )),
                              //     // Container(
                              //     //     padding: EdgeInsets.only(left: 5),
                              //     //     child: Row(
                              //     //       children: [
                              //     //         Icon(
                              //     //           Icons.room_service_sharp,
                              //     //           size: 15,
                              //     //         ),
                              //     //         SizedBox(
                              //     //           width: 2,
                              //     //         ),
                              //     //         Text(
                              //     //           "20 min",
                              //     //           style: TextStyles.withletterspacing(
                              //     //               10,
                              //     //               "Montserrat",
                              //     //               FontWeight.w400,
                              //     //               ColorPallete.darlgrey,
                              //     //               -0.5),
                              //     //         )
                              //     //       ],
                              //     //     )),
                              //     // Container(
                              //     //     padding: EdgeInsets.only(left: 5),
                              //     //     child: Text(
                              //     //       "250 for two",
                              //     //       style: TextStyles.withletterspacing(
                              //     //           10,
                              //     //           "Montserrat",
                              //     //           FontWeight.w400,
                              //     //           ColorPallete.darlgrey,
                              //     //           -0.5),
                              //     //     )),
                              //   ],
                              // ),

                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  // Text(
                                  //   "Locate",
                                  //   style: TextStyles.withletterspacing(
                                  //       12,
                                  //       "Montserrat",
                                  //       FontWeight.w400,
                                  //       ColorPallete.darlgrey,
                                  //       0.1),
                                  // ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  // btn(
                                  //     "order".toUpperCase(),
                                  //     0.03,
                                  //     OrderOntheGoScreen(
                                  //       name: 'LA PUREZZA',
                                  //     ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ])),
            )),
          ),
        ));
  }

  // btn(String btnTitle, h, route) {
  //   return Container(
  //     height: MediaQuery.of(context).size.height * h,
  //     child: ElevatedButton(
  //       style: ElevatedButton.styleFrom(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(5),
  //         ),
  //         primary: ColorPallete.bluedark, // background
  //         onPrimary: ColorPallete.white, // foreground
  //       ),
  //       onPressed: () {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => route),
  //         );
  //       },
  //       child: Text(
  //         btnTitle.toUpperCase(),
  //         style: TextStyles.withletterspacing(
  //             12, "Montserrat", FontWeight.w400, ColorPallete.grey6, -0.5),
  //       ),
  //     ),
  //   );
  // }

}
