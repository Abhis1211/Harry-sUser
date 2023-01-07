import 'package:flutter/material.dart';


import '../config/color_pallete.dart';

class TriColorDividor extends StatelessWidget {
  final List<Color> _colors = [
    ColorPallete.red,
    ColorPallete.yellow,
    ColorPallete.green,
  ];
  final double margin;
  TriColorDividor({required this.margin});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 12),
      child: SizedBox(
        height: 3,
        width: double.infinity,
        child: Row(
          children: [
            for (int i = 0;i<_colors.length; i++)
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: _colors[i],
                  ),
                  margin:EdgeInsets.symmetric(horizontal: margin),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
