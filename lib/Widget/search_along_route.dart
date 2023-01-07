import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Screens/svg_strings.dart';
import '../config/Textstyles.dart';
import '../config/color_pallete.dart';

class SearchAlongRoute extends StatefulWidget {
  @override
  _SearchAlongRouteState createState() => _SearchAlongRouteState();
}

class _SearchAlongRouteState extends State<SearchAlongRoute> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // height: MediaQuery.of(context).size.height * 0.15,
      height: 150,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 25, bottom: 8),
            child: Text(
              "SEARCH ALONG ROUTE",
              style: TextStyles.withletterspacing(
                TextStyles.mb20,
                ColorPallete.black,
                0.5,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Column(
                  children: [
                    SvgPicture.string(
                      SvgStrings.searchAlong,
                      height: 40,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SvgPicture.string(
                      SvgStrings.redLocation,
                      height: 18,
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    // color:Colors.blue,
                    margin: const EdgeInsets.only(bottom: 10, left: 5),
                    // height: MediaQuery.of(context).size.height *
                    //     0.035,
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        hintText: "Enter Your Location",
                        hintStyle: TextStyles.ml12,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    // color:Colors.blue,

                    // height: MediaQuery.of(context).size.height *
                    //     0.035,
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        hintText: "Choose Destination",
                        hintStyle: TextStyles.ml12,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
