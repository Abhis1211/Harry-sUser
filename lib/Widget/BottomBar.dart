import 'package:flutter/material.dart';
import 'package:harrys_beach_bistro/Screens/Home/search_home_screen.dart';
import 'package:harrys_beach_bistro/config/Color.dart';

import '../Screens/order_on_the_go_screen.dart';
import '../Screens/user_account.dart';
import '../config/string.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int pageIndex = 0;

  final pages = [
    SearchHomeScreen(),
    OrderOntheGoScreen(
      name: 'sakjhd',
    ),
    User_Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.white,
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        // padding: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          color: color.skylight,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          // boxShadow: [
          //   BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          // ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              // topLeft: Radius.circular(30.0),
              // topRight: Radius.circular(30.0),
              ),
          child: BottomNavigationBar(
            elevation: 20,
            iconSize: 35,
            type: BottomNavigationBarType.fixed,
            backgroundColor: color.txt_dark_blue_color,
            selectedItemColor: color.white,
            unselectedItemColor: color.txt_grey3_color,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            currentIndex: pageIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: color.PrimaryColor,
                  icon: Icon(Icons.home_rounded),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: color.PrimaryColor,
                  icon: Icon(Icons.room_service),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: color.PrimaryColor,
                  icon: Icon(Icons.person),
                  label: ""),
              // BottomNavigationBarItem(
              //     backgroundColor: color.PrimaryColor,
              //     icon: pageIndex == 3
              //         ? Padding(
              //             padding: const EdgeInsets.only(top: 10),
              //             child: Image.asset(
              //               person_active,
              //               height: 25,
              //             ),
              //           )
              //         : Padding(
              //             padding: const EdgeInsets.only(top: 10),
              //             child: Image.asset(
              //               person_deactive,
              //               height: 25,
              //             ),
              //           ),
              //     label: ""),
            ],
          ),
        ),
      ),
    );
  }
}
