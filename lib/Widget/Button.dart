import 'package:flutter/material.dart';
import 'package:harrys_beach_bistro/config/Color.dart';

import '../config/Textstyles.dart';


class ElevatedButtons extends StatefulWidget {
  final String name;
  final Function? onTap;
  final width;
  final double height;
  final style;
  final colorbtn;
  final bool active;
  final double borderRadius;

  ElevatedButtons({
    Key? key,
    required this.name,
    this.onTap,
    this.width = 0.9,
    this.style = TextStyles.mb16,
    this.colorbtn = color.Primary_second_Color,
    this.active = false,
    this.borderRadius = 15,
    this.height = 50,
  }) : super(key: key);

  @override
  State<ElevatedButtons> createState() => _ElevatedButtonsState();
}

class _ElevatedButtonsState extends State<ElevatedButtons> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * widget.width,
      height: widget.height,
      child: ElevatedButton(
        child: Text(widget.name,style: widget.style),
        onPressed: () {
          widget.onTap!();
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: new RoundedRectangleBorder(
            side: widget.active
                ? BorderSide(color: color.Primary_second_Color)
                : BorderSide(color: Colors.transparent),
            borderRadius: new BorderRadius.circular(widget.borderRadius),
          ),
          primary: widget.colorbtn,
          // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        ),
      ),
    );
  }
}
