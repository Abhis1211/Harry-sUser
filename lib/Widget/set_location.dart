import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Screens/svg_strings.dart';
import '../config/Textstyles.dart';
import '../config/color_pallete.dart';
// import 'package:google_map_location_picker/google_map_location_picker.dart';

class SetLocation extends StatefulWidget {
  @override
  _SetLocationState createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  // LocationResult ? _pickedLocation;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: make location setter (for top of homescreen)

    // },
    return SizedBox(
      child: GestureDetector(
        onTap: () async {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => PlacePicker(
          //       apiKey: "AIzaSyBzOlZP9DQuXgl7MYje_VZib7CUpmc37sI",   // Put YOUR OWN KEY here.
          //       onPlacePicked: (result) {
          //         setState(()  {

          //           // lat = result .geometry.location.lat.toString();
          //           // lng = result .geometry.location.lng.toString();
          //           print("on pickup location"+result .geometry.location.lat.toString());
          //         });

          //         Navigator.of(context).pop();
          //       },
          //       initialPosition: LatLng(-33.8567844, 151.213108),
          //       useCurrentLocation: true,
          //     ),
          //   ),
          // );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: SvgPicture.string(
                    SvgStrings.blueLocation,
                    height: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MANALI",
                        style: TextStyles.withletterspacing(
                          TextStyles.mb16,
                          ColorPallete.black,
                          0.5,
                        ),
                      ),
                      Text(
                        "MALL ROAD, MANALI",
                        style: TextStyle(
                          color: ColorPallete.darlgrey,
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: SvgPicture.asset(
            //     "assets/images/Group 10.svg",
            //     height: 35,
            //     width: 35,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
