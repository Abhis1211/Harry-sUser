import 'package:flutter/material.dart';

import '../Widget/Button.dart';
import '../config/Navagate_Next.dart';
import '../config/Textstyles.dart';
import '../config/color_pallete.dart';
import 'login_screen.dart';

class Help extends StatefulWidget {
  Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController desc = TextEditingController();

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
                        "help",
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
              // height: size.height * 0.095,
              width: double.infinity,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "",
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
            textfield("You name", name, 60.0),
            textfield("You email", email, 60.0),
            textfield("Your Query", desc, 100.0),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButtons(
                width: 0.4,
                borderRadius: 10,
                height: 50,
                name: "Submit",
                onTap: () {
                  // nextScreen(context, Login());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textfield(String title, TextEditingController controller, heights) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Container(
          height: heights,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            controller: controller,
            maxLines: 6,
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
}
