import 'package:flutter/material.dart';

class Custom_Widget extends StatelessWidget {
  const Custom_Widget(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      required this.TextSize,
      required this.fontweight,
      required this.text2,
      required this.TextSize2,
      required this.fontweight2});
  final double height;
  final double width;
  final String text;
  final String text2;
  final double TextSize;
  final double TextSize2;
  final FontWeight fontweight;
  final FontWeight fontweight2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: fontweight, fontSize: TextSize),
          ),
          Text(
            text2,
            style: TextStyle(fontWeight: fontweight2, fontSize: TextSize2),
          )
        ],
      ),
    );
  }
}
