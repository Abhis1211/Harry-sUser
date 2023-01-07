import 'package:flutter/material.dart';
import 'package:harrys_beach_bistro/Screens/tricolor_divider.dart';
import 'package:harrys_beach_bistro/Screens/user_create_profile.dart';

import '../config/Textstyles.dart';
import '../config/color_pallete.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreen createState() => _OtpScreen();
}

class _OtpScreen extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: ColorPallete.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.38,
                width: size.width,
                color: ColorPallete.menucardcolor,
                child: Image.asset("lib/assets/images/gif/verify.gif",
                    fit: BoxFit.cover),
              ),
              TriColorDividor(margin: 0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 15.0),
                      child: Text(
                        "Enter OTP",
                        style: TextStyles.withletterspacing(
                          TextStyles.mb20,
                          ColorPallete.darlgrey,
                          0.5,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 15, bottom: 15.0, right: 10),
                      child: Text(
                        "Please enter 5 digit OTP shared on your mobile number 123456789.",
                        style: TextStyles.withletterspacing(
                          TextStyles.mn14,
                          ColorPallete.black,
                          0.5,
                        ),
                      ),
                    ),
                    Container(
                      child: OTPTextField(
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 80,
                        style: TextStyle(fontSize: 20),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        },
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.only(left: 27, right: 27, top: 20),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       SizedBox(
                    //         width: MediaQuery.of(context).size.width * 0.12,
                    //         height: MediaQuery.of(context).size.height * 0.08,
                    //         child: TextField(
                    //           cursorColor: ColorPallete.cursorcolor,
                    //           style: TextStyle(
                    //               fontSize: 25, fontWeight: FontWeight.w600),
                    //           decoration: InputDecoration(
                    //             focusedBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //             enabledBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //             disabledBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: MediaQuery.of(context).size.width * 0.12,
                    //         height: MediaQuery.of(context).size.height * 0.08,
                    //         child: TextField(
                    //           cursorColor: ColorPallete.cursorcolor,
                    //           style: TextStyle(
                    //               fontSize: 25, fontWeight: FontWeight.w600),
                    //           decoration: InputDecoration(
                    //             focusedBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //             enabledBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //             disabledBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: MediaQuery.of(context).size.width * 0.12,
                    //         height: MediaQuery.of(context).size.height * 0.08,
                    //         child: TextField(
                    //           cursorColor: ColorPallete.cursorcolor,
                    //           style: TextStyle(
                    //               fontSize: 25, fontWeight: FontWeight.w600),
                    //           decoration: InputDecoration(
                    //             focusedBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //             enabledBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //             disabledBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: MediaQuery.of(context).size.width * 0.12,
                    //         height: MediaQuery.of(context).size.height * 0.08,
                    //         child: TextField(
                    //           cursorColor: ColorPallete.cursorcolor,
                    //           style: TextStyle(
                    //               fontSize: 25, fontWeight: FontWeight.w600),
                    //           decoration: InputDecoration(
                    //             focusedBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //             enabledBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //             disabledBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: MediaQuery.of(context).size.width * 0.12,
                    //         height: MediaQuery.of(context).size.height * 0.08,
                    //         child: TextField(
                    //           cursorColor: ColorPallete.cursorcolor,
                    //           style: TextStyle(
                    //               fontSize: 25, fontWeight: FontWeight.w600),
                    //           decoration: InputDecoration(
                    //             focusedBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //             enabledBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //             disabledBorder: OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(7)),
                    //               borderSide: BorderSide(
                    //                   width: 1,
                    //                   color: ColorPallete.otpinputbordercolor),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Didn't received OTP ? ",
                              style: TextStyles.withletterspacing(
                                TextStyles.mb14,
                                ColorPallete.black,
                                0.5,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          User_Create_Profile()),
                                );
                              },
                              child: Text(
                                "Resend",
                                style: TextStyles.withletterspacing(
                                  TextStyles.mb14,
                                  ColorPallete.blue,
                                  0.5,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
