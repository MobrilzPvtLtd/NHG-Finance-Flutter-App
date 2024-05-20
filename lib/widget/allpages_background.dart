import 'package:flutter/material.dart';

class All_Page_Backgound_widget extends StatelessWidget {
  const All_Page_Backgound_widget({super.key});

  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image:DecorationImage(
            fit: BoxFit.fill,
              image:  AssetImage("assets/images/home_background.png"))
        ),
      ),
    );
  }
}