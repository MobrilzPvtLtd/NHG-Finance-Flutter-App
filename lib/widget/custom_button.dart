import 'package:flutter/material.dart';

class Custom_button extends StatelessWidget {
   Custom_button({super.key, required this.buttonname, required this.color, required this.height, required this.width, required this.Fontsize, this.onpressed});
final String buttonname;
final double height;
final double width;
final Color color;
final double Fontsize;
final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
  
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        margin: const EdgeInsets.all(20),
        height: height,
        // height * 0.05,
        width: width,
        // width * 0.25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color),
// Color.fromARGB(255, 5, 167, 204)
        child:  Center(
          child: Text(
            buttonname,
            style:  TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: Fontsize),
          ),
        ),
      ),
    );
  }
}
