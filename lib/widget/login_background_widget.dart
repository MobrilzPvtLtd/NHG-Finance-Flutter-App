import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_background_widget extends StatelessWidget {
  const Login_background_widget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image:DecorationImage(
            fit: BoxFit.fill,
              image:  AssetImage("assets/images/login_backgrond.png"))
        ),
      ),
    );
  }
}
