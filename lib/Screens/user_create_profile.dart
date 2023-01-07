// ignore_for_file: require_trailing_commas

import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:harrys_beach_bistro/Api/Api.dart';
import 'package:harrys_beach_bistro/Screens/Home/search_home_screen.dart';
import 'package:harrys_beach_bistro/Screens/tricolor_divider.dart';
import 'package:harrys_beach_bistro/config/Urls/Urls.dart';

import '../Widget/BottomBar.dart';
import '../Widget/Snackbar.dart';
import '../config/Textstyles.dart';
import '../config/color_pallete.dart';

class User_Create_Profile extends StatefulWidget {
  @override
  _User_Create_ProfileState createState() => _User_Create_ProfileState();
}

class _User_Create_ProfileState extends State<User_Create_Profile> {
  int _value = 1;
  TextEditingController Fullname = TextEditingController();
  TextEditingController first_name = TextEditingController();
  TextEditingController last_name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController con_password = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController phnumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController stateofresidence = TextEditingController();
  late File _image;

  bool isloading = false;

  @override
  // ignore: always_declare_return_types, require_trailing_commas

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Container(
                          width: size.width,
                          child: Text(
                            'Create Profile',
                            style: TextStyles.withletterspacing(
                              TextStyles.mb20,
                              ColorPallete.black,
                              0.5,
                            ),
                          ),
                        ),
                      ),
                      TriColorDividor(margin: 1),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                height: size.height * 0.15,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  color: ColorPallete.menucardcolor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: Icon(Icons.add_a_photo)),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          textfield(
                            'First name',
                            first_name,
                            20,
                          ),
                          textfield(
                            'Last name',
                            last_name,
                            20,
                          ),
                          textfield(
                            'Username',
                            Fullname,
                            20,
                          ),
                          // textfield('Date of Birth', dob, 20),
                          // Container(
                          //   width: 300,
                          //   child: Row(
                          //     children: [
                          //       Radio(
                          //           value: 1,
                          //           groupValue: _value,
                          //           onChanged: (value) {
                          //             setState(() {
                          //               _value = value as int;
                          //             });
                          //           }),
                          //       Text(
                          //         'Male',
                          //         style: TextStyles.withletterspacing(
                          //           TextStyles.mb14,
                          //           ColorPallete.darlgrey,
                          //           0.5,
                          //         ),
                          //       ),
                          //       Radio(
                          //           value: 2,
                          //           groupValue: _value,
                          //           onChanged: (value) {
                          //             setState(() {
                          //               _value = value as int;
                          //             });
                          //           }),
                          //       Text(
                          //         'Female',
                          //         style: TextStyles.withletterspacing(
                          //           TextStyles.mb14,
                          //           ColorPallete.darlgrey,
                          //           0.5,
                          //         ),
                          //       ),
                          //       Radio(
                          //           value: 3,
                          //           groupValue: _value,
                          //           onChanged: (value) {
                          //             setState(() {
                          //               _value = value as int;
                          //             });
                          //           }),
                          //       Text(
                          //         'Other',
                          //         style: TextStyles.withletterspacing(
                          //           TextStyles.mb14,
                          //           ColorPallete.darlgrey,
                          //           0.5,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),

                          textfield('Phone number ', phnumber, 20),
                          textfield('E-mail ID', email, 20),
                          textfield('Password', password, 20),
                          textfield('Confirm password', con_password, 20),
                          // textfield('State of Residence', stateofresidence, 20),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          child: SizedBox(
                              height: 40, //height of button
                              width: 100, //width of button
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors
                                          .blue, //background color of button
                                      side: BorderSide(
                                          width: 1,
                                          color: Colors
                                              .blue), //border width and color
                                      elevation: 3, //elevation of button
                                      shape: RoundedRectangleBorder(
                                          //to set border radius to button
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: EdgeInsets.all(
                                          10) //content padding inside button
                                      ),
                                  onPressed: () {
                                    register();
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => BottomBar()),
                                    // );
                                  },
                                  child: Text(
                                    "NEXT",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                        letterSpacing: 2),
                                  )))),
                      SizedBox(height: 20)
                    ],
                  ),
                ),
              ),
            ),
            isloading
                ? Center(child: CircularProgressIndicator())
                : Container(),
          ],
        ));
  }

  Widget textfield(
      String title, TextEditingController controller, double height) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Container(
          height: size.height * 0.06,
          padding: EdgeInsets.only(left: 40, right: 40),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                hintText: title,
                hintStyle: TextStyles.withletterspacing(
                  TextStyles.mb14,
                  ColorPallete.darlgrey,
                  0.5,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: new BorderSide(color: Colors.black))),
          ),
        ),
        SizedBox(
          height: 7,
        )
      ],
    );
  }

  register() async {
    setState(() {
      isloading = true;
    });
    var data = {
      "email": email.text,
      "first_name": first_name.text,
      "password": password.text,
      "confirm_password": con_password.text,
      "phone": phnumber.text,
      "username": Fullname.text,
      "last_name": last_name.text,
    };
    dio.FormData formData = dio.FormData.fromMap(data);

    await Api().apicall_post(Urls().register, formData, context).then((value) {
      if (value['status'] == true) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomBar()),
        );
      } else {
        mywidget().showSnackBar(value['error_code'], context);
      }
    });
    setState(() {
      isloading = false;
    });
  }
}
