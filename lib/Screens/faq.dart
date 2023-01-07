import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'U_question_dropdown.dart';
//import 'package:uff/Constant/Strings.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //   children: [
            //     Container(
            //         padding: EdgeInsets.only(left:20),
            //         child: Text(Account.city_menu.toUpperCase() +" - " ,style: TextStyles.mb16,)),
            //     Container(
            //
            //         child: Text('${cityName.toUpperCase()}',style: TextStyles.mb16,)),
            //   ],
            // ),

            Container(
                height: size.height * 0.075,
                padding: EdgeInsets.only(left: 22, top: 28),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_sharp),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "F.A.Q",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            letterSpacing: -0.05,
                            color: Color(0xFF414141)),
                      ),
                    ],
                  ),
                )),

            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[400],
            ),
            Container(
              padding: EdgeInsets.only(
                left: 24,
              ),
              height: size.height * 0.095,
              width: double.infinity,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing "
                    "\nelit ut aliquam, purus sit amet luctus venenatis,"
                    " lectus \nmagna fringilla urna, porttitor",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        letterSpacing: 0,
                        color: Color(0xFF000000)),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Expanded(
              child: SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        child: Row(
                            // children: [
                            //   const Text("Sweet"),
                            //   SizedBox(
                            //       width: 40,
                            //       child: Switch(
                            //         value: false,
                            //         onChanged: (value) {},
                            //       )),
                            //   const Text("Salty"),
                            //   const Expanded(child: SizedBox()),
                            //   const Text("Veg Only "),
                            //   SizedBox(
                            //       width: 40,
                            //       child: Switch(
                            //           value: false, onChanged: (value) {})),
                            //   const Expanded(child: SizedBox()),
                            //   SvgPicture.string(SvgStrings.desi, height: 17),
                            //   SizedBox(
                            //       width: 50,
                            //       child: Switch(
                            //           value: false, onChanged: (value) {})),
                            //   // const Expanded(child: SizedBox()),
                            // ],
                            ),
                      ),
                      for (int i = 0; i < 8; i++)
                        Question(
                          index1: i,
                        ),
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   height: 150,
            //   width: double.infinity,
            //   color: const Color(0xffFFEE93),
            //   child: Column(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.symmetric(
            //           horizontal: 20,
            //           vertical: 10,
            //         ),
            //         // child: Row(
            //         //   children: [
            //         //     SvgPicture.string(
            //         //       SvgStrings.crown,
            //         //       height: 20,
            //         //     ),
            //         //     const SizedBox(
            //         //       width: 5,
            //         //     ),
            //         //     const Text(
            //         //       "Our Partners",
            //         //       style: TextStyles.mb18,
            //         //     ),
            //         //   ],
            //         // ),
            //       ),
            //       // Expanded(
            //       //   child: ListView.builder(
            //       //     itemBuilder: (context, index) {
            //       //       return Padding(
            //       //         padding: const EdgeInsets.symmetric(horizontal: 5),
            //       //         child: ClipRRect(
            //       //           borderRadius: BorderRadius.circular(15),
            //       //           child: SvgPicture.string(
            //       //             SvgStrings.placeholder,
            //       //             height: 100,
            //       //             // fit: BoxFit.fitHeight,
            //       //           ),
            //       //         ),
            //       //       );
            //       //     },
            //       //     itemCount: 4,
            //       //     scrollDirection: Axis.horizontal,
            //       //   ),
            //       // ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  
  }
}
