import 'package:flutter/material.dart';
import 'package:nhg_finance_app/widget/custom_button.dart';

class Account_passwordField extends StatelessWidget {
  const Account_passwordField({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: height * 0.80,
            width: width,
            color: Colors.grey[200],
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Current Password",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          focusColor: Colors.white,
                          disabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "New Password",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          focusColor: Colors.white,
                          disabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Confirm Password",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          focusColor: Colors.white,
                          disabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Cancel Button
                        Custom_button(
                            buttonname: "Cancel",
                            color: Color.fromARGB(255, 5, 167, 204),
                            height: height * 0.05,
                            width: width * 0.25,
                            Fontsize: 15,),

                        /// SAVE Button
                        Custom_button(
                            buttonname: "Save",
                            color: Color.fromARGB(255, 5, 167, 204),
                            height: height * 0.05,
                            width: width * 0.25,
                            Fontsize: 15,),
                      ],
                    )
                  ],
                ))));
  }
}
