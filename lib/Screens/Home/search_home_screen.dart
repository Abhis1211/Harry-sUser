import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:harrys_beach_bistro/Screens/svg_strings.dart';
import 'package:harrys_beach_bistro/Screens/tricolor_divider.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '../../Widget/help_cards.dart';
import '../../Widget/quick_links.dart';
import '../../Widget/search_along_route.dart';
import '../../Widget/search_result_card.dart';
import '../../Widget/set_location.dart';
import '../../config/Textstyles.dart';
import '../../config/color_pallete.dart';
import 'Homeapi.dart';

class SearchHomeScreen extends StatefulWidget {
  const SearchHomeScreen({Key? key}) : super(key: key);

  @override
  _SearchHomeScreenState createState() => _SearchHomeScreenState();
}

class _SearchHomeScreenState extends State<SearchHomeScreen> {
  late TutorialCoachMark tutorialCoachMark;
  List<TargetFocus> targets = <TargetFocus>[];
  GlobalKey keyButton = GlobalKey();
  GlobalKey keyButton1 = GlobalKey();
  GlobalKey keyButton2 = GlobalKey();
  GlobalKey keyButton3 = GlobalKey();
  GlobalKey keyButton4 = GlobalKey();
  GlobalKey keyButton5 = GlobalKey();
  Homeapi homeapi = Get.put(Homeapi());
  List item = [
    {
      "img": "lib/assets/Gnocchi-Prawns-Chorizo.jpg",
      "price": "24.90",
      "name": "Gnocchi-Prawns-Chorizo"
    },
    {
      "img": "lib/assets/Margherita.jpg",
      "price": "16.00",
      "name": "Margherita"
    },
    {"img": "lib/assets/Aussie.jpg", "price": "18.90", "name": "Aussie"},
    {"img": "lib/assets/Mongelia.jpg", "price": "17.00", "name": "Mongelia"},
    {
      "img": "lib/assets/Penne-Arrabiata.jpg",
      "price": "21.90",
      "name": "Penne-Arrabiata"
    },
    {
      "img": "lib/assets/Spaghetti-Bolognese.jpg",
      "price": "18.90",
      "name": "Spaghetti-Bolognese"
    },
    {
      "img": "lib/assets/Spaghetti-Marinara.jpg",
      "price": "29.90",
      "name": "Spaghetti-Marinara"
    },
    {
      "img": "lib/assets/Chilli-Sea.jpg",
      "price": "19.90",
      "name": "Chilli-Sea"
    },
    {
      "img": "lib/assets/Prawn-Tail.jpg",
      "price": "17.00",
      "name": "Prawn-Tail"
    },
    {"img": "lib/assets/Slammer.jpg", "price": "19.90", "name": "Slammer"},
  ];

  void initState() {
    GetallProduct();
    // Future.delayed(Duration(milliseconds: 5000), showTutorial);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: ColorPallete.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  key: keyButton,
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: SetLocation(),
                ),
                TriColorDividor(margin: 0),

                SizedBox(
                  key: keyButton1,
                  height: 60,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                          vertical: 10,
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: IconButton(
                                icon: SvgPicture.string(
                                  SvgStrings.searchUltra,
                                  height: 20,
                                ),
                                onPressed: () => {},
                              ),
                              hintText: "Whats on your mind?",
                              hintStyle: TextStyles.ml12,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => const GlobalSearchScreen(),
                          //   ),
                          // );
                        },
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10),

                Container(key: keyButton2, child: SearchAlongRoute()),

                SizedBox(height: 20),

                // Container(
                //   height: 3,
                //   width: double.infinity,
                //   color: Colors.grey.withOpacity(0.2),
                //   margin: const EdgeInsets.symmetric(vertical: 10),
                // ),

                Container(key: keyButton3, child: HelpCards()),

                SizedBox(height: 20),

                // Container(
                //   height: 3,
                //   width: double.infinity,
                //   color: Colors.grey.withOpacity(0.2),
                //   margin: const EdgeInsets.symmetric(vertical: 10),
                // ),

                Container(key: keyButton4, child: QuickLinks()),
                Container(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: item.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Search_Result_Card(
                                name: item[index]['img'],
                                itemname: item[index]['name'],
                                price: item[index]['price'],
                              ),
                            );
                          }),
                      // Align(
                      //   alignment: Alignment.topLeft,
                      //   child: Container(
                      //     padding: EdgeInsets.only(left: 10),
                      //
                      //     child: Image.asset("lib/assets/images/vectors/uff.png",height:size.height*0.2,
                      //       width: size.width*0.35,),
                      //   ),
                      // )
                    ],
                  ),
                )),
              ],
            ),
          )

          // Column(
          //   children: [
          //     // Container(
          //     //     key: keyButton5,
          //     //     child: Column(
          //     //       crossAxisAlignment: CrossAxisAlignment.start,
          //     //       children: [
          //     //         Container(
          //     //           padding: EdgeInsets.only(top: 25, left: 15),
          //     //           child: Text(
          //     //             "RESTAURANTS NEARBY",
          //     //             style: TextStyles.withletterspacing(
          //     //               TextStyles.mb12,
          //     //               ColorPallete.darlgrey,
          //     //               0.5,
          //     //             ),
          //     //           ),
          //     //         ),
          //     //         // Container(
          //     //         //   padding: EdgeInsets.only(left: 15),
          //     //         //   child:
          //     //         //   SingleChildScrollView(
          //     //         //     scrollDirection: Axis.horizontal,
          //     //         //     child: Row(
          //     //         //       mainAxisSize: MainAxisSize.min,
          //     //         //       children: [
          //     //         //         Circular_menu(title: "Filter"),
          //     //         //         Circular_menu(title: "Street Food"),
          //     //         //         Circular_menu(title: "Nearest"),
          //     //         //         Circular_menu(title: "Quick Serving"),
          //     //         //       ],
          //     //         //     ),
          //     //         //   ),
          //     //         // ),
          //     //       ],
          //     //     )),
          //     // Container(
          //     //     child: Container(
          //     //   child: Column(
          //     //     crossAxisAlignment: CrossAxisAlignment.start,
          //     //     mainAxisSize: MainAxisSize.min,
          //     //     children: [
          //     //       Container(
          //     //         padding: EdgeInsets.only(left: 3, right: 3),
          //     //         height: size.height * 0.72,
          //     //         child: ListView.builder(
          //     //             shrinkWrap: true,
          //     //             itemCount: 5,
          //     //             itemBuilder: (BuildContext context, int index) {
          //     //               return Search_Result_Card();
          //     //             }),
          //     //       ),
          //     //       // Align(
          //     //       //   alignment: Alignment.topLeft,
          //     //       //   child: Container(
          //     //       //     padding: EdgeInsets.only(left: 10),
          //     //       //
          //     //       //     child: Image.asset("lib/assets/images/vectors/uff.png",height:size.height*0.2,
          //     //       //       width: size.width*0.35,),
          //     //       //   ),
          //     //       // )
          //     //     ],
          //     //   ),
          //     // )),
          //     // Align(
          //     //   alignment: Alignment.topLeft,
          //     //   child: Container(
          //     //     padding: EdgeInsets.only(left: 10),
          //     //
          //     //     child: Image.asset("lib/assets/images/vectors/uff.png",height:size.height*0.2,
          //     //       width: size.width*0.35,),
          //     //   ),
          //     // )
          //     // TODO: last UFF logo
          //   ],
          // ),

          ),
      // bottomNavigationBar: User_bottombar(index: 0),
    );
  }

  GetallProduct() async {
    await homeapi.Getallproduct(context);
  }
  // void showTutorial() {
  //   initTargets();
  //   tutorialCoachMark = TutorialCoachMark(
  //     context,
  //     targets: targets,
  //     colorShadow: ColorPallete.menucardcolor,
  //     textSkip: "SKIP",
  //     paddingFocus: 10,
  //     opacityShadow: 0.8,
  //     onFinish: () {
  //       print("finish");
  //     },
  //     onClickTarget: (target) {
  //       print('onClickTarget: $target');
  //     },
  //     onClickOverlay: (target) {
  //       print('onClickOverlay: $target');
  //     },
  //     onSkip: () {
  //       print("skip");
  //     },
  //   )..show();
  // }

  // void initTargets() {
  //   var size = MediaQuery.of(context).size;

  //   targets.clear();

  //   targets.add(
  //     TargetFocus(
  //       shape: ShapeLightFocus.RRect,
  //       identify: "keyBottomNavigation1",
  //       keyTarget: keyButton,
  //       alignSkip: Alignment.bottomCenter,
  //       contents: [
  //         TargetContent(
  //           align: ContentAlign.bottom,
  //           builder: (context, controller) {
  //             return Card(
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               color: ColorPallete.white,
  //               child: Container(
  //                 padding: EdgeInsets.only(top: 30),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: <Widget>[
  //                     Container(
  //                       padding: EdgeInsets.only(left: 10),
  //                       child: Text(
  //                           "Here,\n"
  //                           "We can change location of our choice and can get recommendations based on the location.",
  //                           style: TextStyles.withletterspacing(
  //                               10.44,
  //                               "Montserrat",
  //                               FontWeight.w400,
  //                               ColorPallete.black,
  //                               -0.5)),
  //                     ),
  //                     Align(
  //                       alignment: Alignment.bottomRight,
  //                       child: Container(
  //                         padding: EdgeInsets.only(right: 10),
  //                         width: size.width * 0.24,
  //                         child: OutlinedButton(
  //                           onPressed: () {
  //                             controller.next();
  //                           },
  //                           child: Text(
  //                             "NEXT".toUpperCase(),
  //                             style: TextStyles.withletterspacing(
  //                                 12,
  //                                 "Montserrat",
  //                                 FontWeight.w400,
  //                                 Colors.blue,
  //                                 2),
  //                           ),
  //                           style: OutlinedButton.styleFrom(
  //                             backgroundColor: Colors.white,
  //                             elevation: 1,
  //                             primary: Colors.blue,
  //                             side: BorderSide(color: Colors.blue, width: 1),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  //   targets.add(
  //     TargetFocus(
  //       shape: ShapeLightFocus.RRect,
  //       identify: "keyBottomNavigation1",
  //       keyTarget: keyButton1,
  //       alignSkip: Alignment.topRight,
  //       contents: [
  //         TargetContent(
  //           align: ContentAlign.bottom,
  //           builder: (context, controller) {
  //             return Card(
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               color: ColorPallete.white,
  //               child: Container(
  //                 padding: EdgeInsets.only(top: 30),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: <Widget>[
  //                     Container(
  //                       padding: EdgeInsets.only(left: 10),
  //                       child: Text(
  //                           "Here,\n"
  //                           "We can search your favourite dishes as per your liking, different places to eat and explore, etc.",
  //                           style: TextStyles.withletterspacing(
  //                               10.44,
  //                               "Montserrat",
  //                               FontWeight.w400,
  //                               ColorPallete.black,
  //                               -0.5)),
  //                     ),
  //                     Align(
  //                       alignment: Alignment.bottomRight,
  //                       child: Container(
  //                         padding: EdgeInsets.only(right: 10),
  //                         width: size.width * 0.24,
  //                         child: OutlinedButton(
  //                           onPressed: () {
  //                             setState(() {
  //                               controller.next();
  //                             });
  //                           },
  //                           child: Text(
  //                             "NEXT".toUpperCase(),
  //                             style: TextStyles.withletterspacing(
  //                                 12,
  //                                 "Montserrat",
  //                                 FontWeight.w400,
  //                                 Colors.blue,
  //                                 2),
  //                           ),
  //                           style: OutlinedButton.styleFrom(
  //                             backgroundColor: Colors.white,
  //                             elevation: 1,
  //                             primary: Colors.blue,
  //                             side: BorderSide(color: Colors.blue, width: 1),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  //   targets.add(
  //     TargetFocus(
  //       shape: ShapeLightFocus.RRect,
  //       identify: "keyBottomNavigation1",
  //       keyTarget: keyButton2,
  //       alignSkip: Alignment.topRight,
  //       contents: [
  //         TargetContent(
  //           align: ContentAlign.bottom,
  //           builder: (context, controller) {
  //             return Card(
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               color: ColorPallete.white,
  //               child: Container(
  //                 padding: EdgeInsets.only(top: 30),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: <Widget>[
  //                     Container(
  //                       padding: EdgeInsets.only(left: 10),
  //                       child: Text(
  //                           "Here\n,"
  //                           "We can set a location where we can order food by the time we can reach destination, our food will get ready.",
  //                           style: TextStyles.withletterspacing(
  //                               10.44,
  //                               "Montserrat",
  //                               FontWeight.w400,
  //                               ColorPallete.black,
  //                               -0.5)),
  //                     ),
  //                     Align(
  //                       alignment: Alignment.bottomRight,
  //                       child: Container(
  //                         padding: EdgeInsets.only(right: 10),
  //                         width: size.width * 0.24,
  //                         child: OutlinedButton(
  //                           onPressed: () {
  //                             setState(() {
  //                               controller.next();
  //                             });
  //                           },
  //                           child: Text(
  //                             "NEXT".toUpperCase(),
  //                             style: TextStyles.withletterspacing(
  //                                 12,
  //                                 "Montserrat",
  //                                 FontWeight.w400,
  //                                 Colors.blue,
  //                                 2),
  //                           ),
  //                           style: OutlinedButton.styleFrom(
  //                             backgroundColor: Colors.white,
  //                             elevation: 1,
  //                             primary: Colors.blue,
  //                             side: BorderSide(color: Colors.blue, width: 1),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  //   targets.add(
  //     TargetFocus(
  //       shape: ShapeLightFocus.RRect,
  //       identify: "keyBottomNavigation1",
  //       keyTarget: keyButton3,
  //       alignSkip: Alignment.topRight,
  //       contents: [
  //         TargetContent(
  //           align: ContentAlign.bottom,
  //           builder: (context, controller) {
  //             return Card(
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               color: ColorPallete.white,
  //               child: Container(
  //                 padding: EdgeInsets.only(top: 30),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: <Widget>[
  //                     Container(
  //                       padding: EdgeInsets.only(left: 10),
  //                       child: Text(
  //                           "Here,\n"
  //                           "We can search your favourite dishes as per your liking, different places to eat and explore, etc.",
  //                           style: TextStyles.withletterspacing(
  //                               10.44,
  //                               "Montserrat",
  //                               FontWeight.w400,
  //                               ColorPallete.black,
  //                               -0.5)),
  //                     ),
  //                     Align(
  //                       alignment: Alignment.bottomRight,
  //                       child: Container(
  //                         padding: EdgeInsets.only(right: 10),
  //                         width: size.width * 0.24,
  //                         child: OutlinedButton(
  //                           onPressed: () {
  //                             setState(() {
  //                               controller.next();
  //                             });
  //                           },
  //                           child: Text(
  //                             "NEXT".toUpperCase(),
  //                             style: TextStyles.withletterspacing(
  //                                 12,
  //                                 "Montserrat",
  //                                 FontWeight.w400,
  //                                 Colors.blue,
  //                                 2),
  //                           ),
  //                           style: OutlinedButton.styleFrom(
  //                             backgroundColor: Colors.white,
  //                             elevation: 1,
  //                             primary: Colors.blue,
  //                             side: BorderSide(color: Colors.blue, width: 1),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  //   targets.add(
  //     TargetFocus(
  //       shape: ShapeLightFocus.RRect,
  //       identify: "keyBottomNavigation1",
  //       keyTarget: keyButton4,
  //       alignSkip: Alignment.topRight,
  //       contents: [
  //         TargetContent(
  //           align: ContentAlign.top,
  //           builder: (context, controller) {
  //             return Card(
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               color: ColorPallete.white,
  //               child: Container(
  //                 padding: EdgeInsets.only(top: 30),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: <Widget>[
  //                     Container(
  //                       padding: EdgeInsets.only(left: 10),
  //                       child: Text(
  //                           "Here,\n"
  //                           "We can search your favourite dishes as per your liking, different places to eat and explore, etc.",
  //                           style: TextStyles.withletterspacing(
  //                               10.44,
  //                               "Montserrat",
  //                               FontWeight.w400,
  //                               ColorPallete.black,
  //                               -0.5)),
  //                     ),
  //                     Align(
  //                       alignment: Alignment.bottomRight,
  //                       child: Container(
  //                         padding: EdgeInsets.only(right: 10),
  //                         width: size.width * 0.24,
  //                         child: OutlinedButton(
  //                           onPressed: () {
  //                             setState(() {
  //                               controller.next();
  //                             });
  //                           },
  //                           child: Text(
  //                             "NEXT".toUpperCase(),
  //                             style: TextStyles.withletterspacing(
  //                                 12,
  //                                 "Montserrat",
  //                                 FontWeight.w400,
  //                                 Colors.blue,
  //                                 2),
  //                           ),
  //                           style: OutlinedButton.styleFrom(
  //                             backgroundColor: Colors.white,
  //                             elevation: 1,
  //                             primary: Colors.blue,
  //                             side: BorderSide(color: Colors.blue, width: 1),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  //   targets.add(
  //     TargetFocus(
  //       shape: ShapeLightFocus.RRect,
  //       identify: "keyBottomNavigation1",
  //       keyTarget: keyButton5,
  //       alignSkip: Alignment.topRight,
  //       contents: [
  //         TargetContent(
  //           align: ContentAlign.top,
  //           builder: (context, controller) {
  //             return Card(
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               color: ColorPallete.white,
  //               child: Container(
  //                 padding: EdgeInsets.only(top: 30),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: <Widget>[
  //                     Container(
  //                       padding: EdgeInsets.only(left: 10),
  //                       child: Text(
  //                           "Here,\n"
  //                           "We can search your favourite dishes as per your liking, different places to eat and explore, etc.",
  //                           style: TextStyles.withletterspacing(
  //                               10.44,
  //                               "Montserrat",
  //                               FontWeight.w400,
  //                               ColorPallete.black,
  //                               -0.5)),
  //                     ),
  //                     Align(
  //                       alignment: Alignment.bottomRight,
  //                       child: Container(
  //                         padding: EdgeInsets.only(right: 10),
  //                         width: size.width * 0.24,
  //                         child: OutlinedButton(
  //                           onPressed: () {
  //                             setState(() {
  //                               controller.next();
  //                             });
  //                           },
  //                           child: Text(
  //                             "NEXT".toUpperCase(),
  //                             style: TextStyles.withletterspacing(
  //                                 12,
  //                                 "Montserrat",
  //                                 FontWeight.w400,
  //                                 Colors.blue,
  //                                 2),
  //                           ),
  //                           style: OutlinedButton.styleFrom(
  //                             backgroundColor: Colors.white,
  //                             elevation: 1,
  //                             primary: Colors.blue,
  //                             side: BorderSide(color: Colors.blue, width: 1),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }

}
