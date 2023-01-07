import 'package:flutter/material.dart';

import '../config/Textstyles.dart';
import '../config/color_pallete.dart';

class User_Notification extends StatefulWidget {
  const User_Notification({Key? key}) : super(key: key);

  @override
  _User_NotificationState createState() => _User_NotificationState();
}

class _User_NotificationState extends State<User_Notification> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back)),
                      const SizedBox(width: 10),
                      Text(
                        "Notification",
                        style: TextStyles.withletterspacing(
                            TextStyles.mb20, ColorPallete.darlgrey, -0.5),
                      ),
                    ],
                  )),
              SizedBox(height: 10),
              Divider(thickness: 1),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.9,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: size.height * 0.16,
                          child: Card(
                              child: ListTile(
                            title: Container(
                                padding: EdgeInsets.only(top: 15),
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
                                              width: size.width * 0.1,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Center(
                                                    child: Text(
                                                        "New".toUpperCase(),
                                                        style: TextStyles
                                                            .withletterspacing(
                                                                TextStyles.mb10,
                                                                ColorPallete
                                                                    .white,
                                                                -0.5))),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(7),
                                                    topRight:
                                                        Radius.circular(7),
                                                    bottomLeft:
                                                        Radius.circular(7),
                                                    bottomRight:
                                                        Radius.circular(7)),
                                              )),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "50% OFF AT",
                                            style: TextStyles.withletterspacing(
                                                TextStyles.mb16,
                                                ColorPallete.darlgrey,
                                                1),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("description".toUpperCase(),
                                              style:
                                                  TextStyles.withletterspacing(
                                                      TextStyles.mb12,
                                                      ColorPallete.grey,
                                                      0.5)),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "05:05",
                                            style: TextStyles.withletterspacing(
                                                TextStyles.mb10,
                                                ColorPallete.bluedark,
                                                1),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 18),
                                        child: Container(
                                          height: size.height * 0.1,
                                          width: size.width * 0.35,
                                          decoration: BoxDecoration(
                                            color: ColorPallete.menucardcolor,
                                            borderRadius: BorderRadius.only(),
                                          ),
                                          child: Image.asset(
                                            "lib/assets/images/vectors/hotel_img.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    ])),
                          )));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  btn() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.03,
      width: MediaQuery.of(context).size.width * 0.19,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorPallete.blue, // background
          onPrimary: ColorPallete.bgwhite, // foreground
        ),
        onPressed: () {},
        child: Text(
          "Apply",
          style: TextStyles.mb10,
        ),
      ),
    );
  }
}
