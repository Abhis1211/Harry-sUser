// import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:harrys_beach_bistro/Screens/your_order.dart';
import 'package:harrys_beach_bistro/config/Color.dart';

import '../config/Textstyles.dart';
import '../config/color_pallete.dart';
import 'About.dart';
import 'Help.dart';
import 'changepassword.dart';
import 'faq.dart';
import 'notification.dart';

// import 'package:uff/Constant/Colors.dart';
// import 'package:uff/Constant/Strings.dart';
// import 'package:uff/screens/User%20Screen/u_FAQ.dart';

// import 'package:uff/screens/User%20Screen/widget/User_bottombar.dart';
// import 'package:uff/screens/User%20Screen/bookmarks.dart';
// import 'package:uff/screens/User%20Screen/faq.dart';

// import 'package:uff/screens/User%20Screen/referrals.dart';
// import 'package:uff/utils/color_pallete.dart';
// import 'package:uff/utils/text_styles.dart';
// import 'ReportIssue.dart';
// import 'account_edit_screen.dart';
// import 'notification.dart';
// import 'paymentmode.dart';

class User_Account extends StatefulWidget {
  const User_Account({Key? key}) : super(key: key);

  @override
  _User_AccountState createState() => _User_AccountState();
}

class _User_AccountState extends State<User_Account> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorPallete.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      // GestureDetector(
                      //   onTap: (){
                      //     Navigator.pop(context);
                      //   },
                      //     child: Icon(Icons.arrow_back)
                      // ),
                      const SizedBox(width: 10),
                      Text(
                        "Profile",
                        style: TextStyles.withletterspacing(
                          TextStyles.mb20,
                          ColorPallete.darlgrey,
                          0.5,
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 10),
              Divider(thickness: 2),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 30, bottom: 30),
                      child: CircleAvatar(
                        backgroundColor: ColorPallete.menucardcolor,
                        maxRadius: 40,
                        minRadius: 40,
                        child: Center(
                            child: Icon(
                          Icons.add_a_photo,
                          color: ColorPallete.black,
                        )),
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 20, bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Demo name",
                            style: TextStyles.withletterspacing(
                              TextStyles.mb16,
                              ColorPallete.darlgrey,
                              0.5,
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "1234567898",
                                    style: TextStyles.withletterspacing(
                                        TextStyles.mb14,
                                        ColorPallete.animationcolor,
                                        -0.5),
                                  ),
                                  Text(
                                    " | ",
                                    style: TextStyles.withletterspacing(
                                        TextStyles.mb14,
                                        ColorPallete.animationcolor,
                                        -0.5),
                                  ),
                                  Text(
                                    "rajverma.com",
                                    style: TextStyles.withletterspacing(
                                        TextStyles.mb14,
                                        ColorPallete.animationcolor,
                                        -0.5),
                                  )
                                ],
                              )),
                          SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              // showDialog(
                              //   context: context,
                              //   builder: (context) =>Account_Edit(),
                              // );
                            },
                            child: Container(
                                child: Text(
                              "Edit Profile".toUpperCase(),
                              style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize: 14,
                                  color: ColorPallete.bluedark,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400),
                            )),
                          )
                        ],
                      ))
                ],
              ),
              SizedBox(height: 1),
              Container(
                // height: MediaQuery.of(context).size.height * 0.53,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    account_menu_list("My Order", Your_order()),
                    account_menu_list("Order share", null),
                    // account_menu_list("Account Book", null),
                    account_menu_list("Change Password", ChangePassword()),
                    account_menu_list("Notification", User_Notification()),
                    account_menu_list("Faq", FAQ()),
                    account_menu_list("Help", Help()),
                    account_menu_list("About", About()),
                  ],
                ),
              ),
              //       FlipCard(
              //   direction: FlipDirection.HORIZONTAL,
              //   front: Container(
              //     child: Container(
              //         height: size.height*0.2,
              //         width: size.width*0.9,
              //         child:Image.asset("lib/assets/images/ReferEarn/Refer_earn.png")
              //     ),
              //   ),
              //   back: Container(
              //     height: size.height*0.2,
              //     width: size.width*0.9,
              //     child: Stack(
              //       children: [
              //         Image.asset("lib/assets/images/ReferEarn/refer_earn_back.png"),
              //         GestureDetector(
              //           onTap:(){
              //             print("hiii");
              //           },
              //             child: Padding(
              //               padding:  EdgeInsets.only(left: 160),
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   border: Border.all(color: ColorPallete.transparent)
              //                 ),
              //                   alignment: Alignment.topRight,
              //                   child: Text("")),
              //             ))
              //       ],
              //     )

              //   ),
              // ),

              Container(
                width: size.width * 0.95,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {
                    print('Received click');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Logout",
                        style: TextStyles.withletterspacing(
                            TextStyles.mb14, Colors.blue, 2),
                      ),
                      Icon(Icons.logout)
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 1,
                    primary: Colors.blue,
                    side: BorderSide(color: Colors.blue, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar:User_bottombar(index: 4),
    );
  }

  account_menu_list(name, route) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Card(
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 60,
          child: ListTile(
              title: Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text(
                    name,
                    style: TextStyles.withletterspacing(
                        TextStyles.mb16, ColorPallete.darlgrey, -0.5),
                  )),
              trailing: Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Icon(Icons.arrow_forward_ios,
                      size: 20, color: color.text_grey2_color))),
        ),
      ),
    );
  }
}
