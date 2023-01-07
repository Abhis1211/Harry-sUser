import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harrys_beach_bistro/Screens/svg_strings.dart';
import 'package:harrys_beach_bistro/Screens/tricolor_divider.dart';
import 'package:harrys_beach_bistro/Screens/user_create_profile.dart';
import 'package:harrys_beach_bistro/Widget/Button.dart';
import 'package:harrys_beach_bistro/config/Color.dart';
import 'package:harrys_beach_bistro/config/Navagate_Next.dart';
import 'package:dio/dio.dart' as dio;
import '../Api/Api.dart';
import '../Widget/BottomBar.dart';
import '../Widget/Snackbar.dart';
import '../config/Textstyles.dart';
import '../config/Urls/Urls.dart';
import '../config/color_pallete.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final int _numPages = 5;
  final PageController _pageController = PageController();
  TextEditingController username_ctrl = TextEditingController();
  TextEditingController password = TextEditingController();
  int _currentPage = 0;

  bool isloading = false;

  var validateuser = false;
  var validatepassword = false;

  List<Widget> _buildPageIndicator() {
    final List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true, i) : _indicator(false, i));
    }
    return list;
  }

  Widget _indicator(bool isActive, int page) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white54,
          borderRadius: BorderRadius.circular(5)),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _numPages - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      try {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeIn,
        );
        // ignore: empty_catches
      } catch (e) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: <Widget>[
                  Container(
                    height: size.height * 0.38,
                    width: size.width,
                    color: ColorPallete.menucardcolor,
                    child: Image.asset(
                      "lib/assets/images/vectors/hotel_img.png",
                      fit: BoxFit.cover,
                    ),
                    // Stack(
                    //   children: [
                    //     // SizedBox(
                    //     //   child: PageView(
                    //     //     physics: const BouncingScrollPhysics(),
                    //     //     controller: _pageController,
                    //     //     onPageChanged: (int page) {
                    //     //       setState(() {
                    //     //         _currentPage = page;
                    //     //       });
                    //     //     },
                    //     //
                    //     //     children: <Widget>[
                    //     //       Image.asset(
                    //     //         "lib/assets/images/signin/signin1.png",
                    //     //         fit: BoxFit.cover,
                    //     //       ),
                    //     //       Image.asset(
                    //     //         "lib/assets/images/signin/signin2.png",
                    //     //         fit: BoxFit.cover,
                    //     //       ),
                    //     //       Image.asset(
                    //     //         "lib/assets/images/signin/signin3.png",
                    //     //         fit: BoxFit.cover,
                    //     //       ),
                    //     //       Image.asset(
                    //     //         "lib/assets/images/signin/signin4.png",
                    //     //         fit: BoxFit.cover,
                    //     //       ),
                    //     //       Image.asset(
                    //     //         "lib/assets/images/signin/signin5.png",
                    //     //         fit: BoxFit.cover,
                    //     //       ),
                    //     //     ],
                    //     //   ),
                    //     // ),
                    //     // Padding(
                    //     //   padding: const EdgeInsets.all(8.0),
                    //     //   child: Align(
                    //     //     alignment: Alignment.bottomCenter,
                    //     //     child: Row(
                    //     //       mainAxisAlignment: MainAxisAlignment.center,
                    //     //       children: _buildPageIndicator(),
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //   ],
                    // ),
                  ),
                  TriColorDividor(margin: 1),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    padding: const EdgeInsets.only(
                      top: 1,
                      left: 20,
                      right: 20,
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 20,
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.w400,
                          color: ColorPallete.black),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.topLeft,
                      width: size.width,
                      child: Text(
                        "Username",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w400,
                            color: ColorPallete.darlgrey),
                      )),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: size.height * 0.05,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: username_ctrl,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Enter your Username",
                        errorText: validateuser ? "Enter Username" : null,
                        contentPadding: EdgeInsets.only(bottom: 13.5),
                        hintStyle: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            color: Color(0xFFBDBDBD),
                            letterSpacing: -0.05),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w400,
                            color: ColorPallete.darlgrey),
                      )),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: size.height * 0.05,
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.phone,
                      controller: password,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        errorText: validatepassword ? "Enter password" : null,
                        hintText: "Enter your password",
                        contentPadding: EdgeInsets.only(bottom: 13.5),
                        hintStyle: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            color: Color(0xFFBDBDBD),
                            letterSpacing: -0.05),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButtons(
                      name: "Sign in",
                      onTap: () {
                        if (username_ctrl.text.isEmpty) {
                          setState(() {
                            validateuser = true;
                          });
                        } else if (password.text.isEmpty) {
                          setState(() {
                            validatepassword = true;
                          });
                        } else {
                          login();
                        }

                        // nextScreen(context, OtpScreen());
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  //  Elevated_Button().btn(context, 0.06, 0.5, ColorPallete.bluedark,ColorPallete.white, "Sign in", TextStyles.withletterspacing(TextStyles.mb10,ColorPallete.white,0.5,), 10, OtpScreen()),
                  // GestureDetector(onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => OtpScreen()),
                  //   );
                  // },
                  //   child: Container(
                  //     height: size.height*0.06,
                  //     margin: const EdgeInsets.all(20),
                  //     width: size.width*0.55,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(7),
                  //       color: Color(0xFF2196F3),
                  //     ),
                  //     child: Align(
                  //       child: Text(
                  //         "Sign in",
                  //         style:
                  //         TextStyles.withColor(TextStyles.mb18, Colors.white),
                  //         textAlign: TextAlign.center,
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: size.height * 0.028,
                      width: size.width * 0.38,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'lib/assets/images/signin/Or.png',
                          ),
                        ),
                        // shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text("or login with",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            letterSpacing: -0.5,
                            color: Color(0xFF000000))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: CircleAvatar(
                            // foregroundColor: Colors.grey,
                            backgroundColor: Colors.grey[200],
                            radius: 80.0,
                            child: ClipOval(
                                child: SvgPicture.string(
                              SvgStrings.facebook,
                              height: 55,
                              width: 55,
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: CircleAvatar(
                            // foregroundColor: Colors.grey,
                            backgroundColor: Colors.grey[200],
                            radius: 80.0,
                            child: ClipOval(
                              child: SvgPicture.string(
                                SvgStrings.google,
                                height: 25,
                                width: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Do not have Account? ',
                            style: TextStyles.withColor(
                                TextStyles.mn14, color.black)),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                nextScreen(context, User_Create_Profile());
                              },
                            text: 'Register',
                            style: TextStyles.withColor(
                                TextStyles.mb14, color.Primary_second_Color)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Container(
                  //   height: 55,
                  //   margin:
                  //   const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  //   width: 150,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     color: const Color.fromRGBO(63, 80, 181, 1),
                  //   ),
                  //   child: GestureDetector(
                  //     child: SizedBox(
                  //       child: Row(
                  //         children: <Widget>[
                  //           SizedBox(
                  //             height: 50,
                  //             width: 50,
                  //             child: SvgPicture.string(SvgStrings.facebook),
                  //           ),
                  //
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   height: 55,
                  //   margin:
                  //   const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  //   width: 150,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     color: const Color(0xfff4f4f4),
                  //   ),
                  //   child: GestureDetector(
                  //     child: SizedBox(
                  //       child: Row(
                  //         children: <Widget>[
                  //           SizedBox(
                  //             height: 50,
                  //             width: 50,
                  //             child: SvgPicture.string(SvgStrings.google),
                  //           ),
                  //
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              isloading
                  ? Center(child: CircularProgressIndicator())
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  login() async {
    setState(() {
      isloading = true;
    });
    var data = {
      "username": username_ctrl.text,
      "password": password.text,
    };
    dio.FormData formData = dio.FormData.fromMap(data);
    await Api().apicall_post(Urls().login, formData, context).then((value) {
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
